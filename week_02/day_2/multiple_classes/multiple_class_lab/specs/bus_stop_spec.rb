require("minitest/autorun")
require_relative("../bus_stop.rb")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusStopTest < MiniTest::Test
  def setup
    @leith = BusStop.new("Leith")
    @passenger_1 = Person.new("Mary Smith", 26)
    @passenger_2 = Person.new("Peter Hopkins", 47)
    @passenger_3 = Person.new("Katie Spencer", 33)
  end

  def test_has_name
    assert_equal("Leith", @leith.name)
  end

  def test_has_queue
    assert_equal([], @leith.queue)
  end

  def test_add_person_to_queue
    @leith.add_person_to_queue(@passenger_1)
    @leith.add_person_to_queue(@passenger_2)
    people_queuing = [@passenger_1, @passenger_2]
    assert_equal(people_queuing, @leith.queue)
  end
end
