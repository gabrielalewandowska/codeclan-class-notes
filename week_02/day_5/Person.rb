class Person
  @@number_of_people = 0

  attr_accessor(:name, :age)

  def initialize(name, age)
    @name = name
    @age = age
    @@number_of_people += 1
  end

  def Person.number_of_people
    return @@number_of_people
  end

end
