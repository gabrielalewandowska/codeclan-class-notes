require("pg")

class PizzaOrder

  attr_accessor(:first_name, :last_name, :topping, :quantity)
  attr_reader(:id)

  def initialize(order_details)
    @id = order_details["id"].to_i if order_details["id"]
    @first_name = order_details["first_name"]
    @last_name = order_details["last_name"]
    @topping = order_details["topping"]
    @quantity = order_details["quantity"].to_i
  end

  def save
    db = PG.connect({dbname: "pizza_shop", host: "localhost"})
    sql = "
      INSERT INTO pizza_orders
      (first_name, last_name, topping, quantity)
      VALUES
      ($1, $2, $3, $4)
      RETURNING *;
      "
      #('#{@first_name}', '#{@last_name}', '#{@topping}', #{@quantity});

    values = [@first_name, @last_name, @topping, @quantity]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    # pg_result = db.exec_prepared("save", values)
    # saved_order_hash = pg_result[0]
    # id_string = saved_order_hash["id"]
    # @id = id_string.to_i
    db.close
  end

  def self.all #OR PizzaOrder.all
    db = PG.connect({dbname: "pizza_shop", host: "localhost"})
    sql = "SELECT * FROM pizza_orders;"
    values = []
    db.prepare("all", sql)
    orders = db.exec_prepared("all", values)
    db.close
    return orders
  end

  def PizzaOrder.delete_all
    db = PG.connect({ dbname: "pizza_shop", host: "localhost"})
    sql = "DELETE FROM pizza_orders;"
    values = []
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all", values)
    db.close
  end

  def delete
    db = PG.connect({dbname: "pizza_shop", host: "localhost"})
    sql = "
      DELETE FROM pizza_orders
      WHERE id = $1;
    "
    values = [@id]
    db.prepare("delete_one", sql)
    db.exec_prepared("delete_one", values)
    db.close
  end

  def update
    db = PG.connect({ dbname: "pizza_shop", host: "localhost"})
    sql = "
      UPDATE pizza_orders
      SET
      (first_name, last_name, topping, quantity)
      =
      ($1, $2, $3, $4)
      WHERE id = $5;
    "

    values = [@first_name, @last_name, @topping, @quantity, @id]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close
  end
end
