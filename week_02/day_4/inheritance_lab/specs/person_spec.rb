require("minitest/autorun")
require_relative("../person")

class TestPerson < MiniTest::Test

  def setup
    @john = Person.new("John", "Smith")
  end

  def test_person_has_name
    assert_equal("John", @john.first_name)
  end

  def test_person_can_talk
    assert_equal("My name is John Smith", @john.talk)
  end
end
