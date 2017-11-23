require( 'pg' )
require_relative("../db/sql_runner")


class PizzaOrder

  attr_accessor(:topping, :quantity)
  attr_reader(:id, :customer_id)

  def initialize( order_details )
    @customer_id = order_details["customer_id"]
    @topping = order_details['topping']
    @quantity = order_details['quantity'].to_i()
    @id = order_details['id'].to_i() if order_details['id']
  end

  def customer
    sql = "
      SELECT * FROM customers
      WHERE id = $1;"

    results_array = SqlRunner.run(sql, [@customer_id])
    customer_hash = results_array[0]
    customer_object = Customer.new(customer_hash)

    return customer_object
  end

  def save()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = '
      INSERT INTO pizza_orders (
        customer_id,
        topping,
        quantity
      ) VALUES (
        $1, $2, $3
      )
      RETURNING id;'
      # 'RETURNING id' or 'RETURNING *' will achieve the same thing for us in this situation
    values = [@customer_id, @topping, @quantity]
    db.prepare('save', sql)
    saved_order_hash = db.exec_prepared('save', values)[0]
    @id = saved_order_hash['id'].to_i()
    db.close()
  end

  def update()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = '
      UPDATE pizza_orders SET (
        customer_id,
        topping,
        quantity
      ) = (
        $1, $2, $3
      )
      WHERE id = $5;'
    values = [@customer_id, @topping, @quantity, @id]
    db.prepare('update', sql)
    db.exec_prepared('update', values)
    db.close()
  end

  def delete()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = 'DELETE FROM pizza_orders WHERE id = $1;'
    values = [@id]
    db.prepare('delete', sql)
    db.exec_prepared('delete', values)
    db.close()
  end

  def PizzaOrder.delete_all()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = 'DELETE FROM pizza_orders;'
    db.prepare('delete_all', sql)
    db.exec_prepared('delete_all', [])
    db.close()
  end

  def PizzaOrder.all()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = 'SELECT * FROM pizza_orders;'
    db.prepare('all', sql)
    orders = db.exec_prepared('all', [])
    db.close()
    return orders.map { |order_hash| PizzaOrder.new( order_hash ) }
  end

end
