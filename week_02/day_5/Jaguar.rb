class Jaguar

  attr_accessor(:name, :colour)
  attr_reader(:age)

  def initialize(name, colour, dob)
    @name = name
    @colour = colour
    @age = 2017 - dob
  end

end
