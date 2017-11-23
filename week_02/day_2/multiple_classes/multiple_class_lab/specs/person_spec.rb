require("minitest/autorun")
require_relative("../person.rb")


class PersonTest < MiniTest::Test
  def setup
    @passenger_1 = Person.new("Mary Smith", 26)
  end

  def test_passenger_has_name
    assert_equal("Mary Smith", @passenger_1.name)
  end

  def test_passenger_has_age
    assert_equal(26, @passenger_1.age)
  end

end
