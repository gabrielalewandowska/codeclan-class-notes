require_relative("Person.rb")
require_relative("Jaguar.rb")
require("pry")


person = Person.new("George", 100)
jaguar = Jaguar.new("Doris", "black", 1985)

  def example_function(number)
    number_squared = number ** 2
    return number_squared
  end


example_function(5)
binding.pry
nil
