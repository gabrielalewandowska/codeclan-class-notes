require("pry-byebug")
require_relative("models/pizza_order")

PizzaOrder.delete_all

order1 = PizzaOrder.new({
  "first_name" => "Darth",
  "last_name" => "Vader",
  "topping" => "Luke's Hand",
  "quantity" => 1
  })

  order1.save

orders = PizzaOrder.all

pizza_orders = orders.map {|order_hash| PizzaOrder.new(order_hash)}

binding.pry
nil
