require("pg")
require_relative("../db/sql_runner")

class Customer

  attr_accessor(:name)
  attr_reader(:id)

  def initialize(params)
    @id = params["id"].to_i if params["id"]
    @name = params["name"]
  end

  def pizza_orders
    sql = "SELECT * FROM pizza_orders
    WHERE customer_id = $1;"

    order_hashes = SqlRunner.run(sql, [@id])
    pizza_orders = order_hashes.map {|order_hash|
      PizzaOrder.new(order_hash)}
    return pizza_orders
  end

  def save
    db = PG.connect({dbname: "pizza_shop", host: "localhost"})
    sql = "
      INSERT INTO customers (
        name
      ) VALUES (
        $1
      )
      RETURNING *;"
    db.prepare("save", sql)
    returned_data = db.exec_prepared("save", [@name])
    db.close

    returned_hash = returned_data[0]

    id = returned_hash["id"]
    @id = id.to_i
  #  @id = returned_data[0]["id"].to_i
  end

  def Customer.delete_all
    db = PG.connect({dbname: "pizza_shop", host: "localhost"})
    sql = "DELETE FROM customers;"
    db.exec(sql)
    db.close
  end

  def Customer.all
    sql = "SELECT * FROM customers;"
    results = SqlRunner.run(sql)
    #with map
  #customers = results.map { |customer_hash| Customer.new(customer_hash)}
  #without map
   customers = []

   for result_hash in results
     customer_object = Customer.new(result_hash)
     customers.push(customer_object)
   end

   return customers
  end


end
