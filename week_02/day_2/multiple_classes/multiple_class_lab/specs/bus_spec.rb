require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test
  def setup
    @bus_16 = Bus.new(16, "Ocean Terminal")
    @passenger_1 = Person.new("Mary Smith", 26)
    @passenger_2 = Person.new("Peter Hopkins", 47)
    @passenger_3 = Person.new("Katie Spencer", 33)
    @leith = BusStop.new("Leith")
  end

  def test_bus_has_route_number
    assert_equal(16, @bus_16.route_number)
  end

  def test_bus_has_destination
    assert_equal("Ocean Terminal", @bus_16.destination)
  end

  def test_bus_drive
    assert_equal("Brum brum", @bus_16.drive)
  end

  def test_passenger_number
    assert_equal(0, @bus_16.passenger_number)
  end

  def test_bus_pick_up
    added_passengers = [@passenger_2, @passenger_3]
    @bus_16.pick_up(@passenger_2)
    @bus_16.pick_up(@passenger_3)
    assert_equal(added_passengers, @bus_16.passengers)
  end

  def test_bus_drop_off
    @bus_16.pick_up(@passenger_2)
    @bus_16.pick_up(@passenger_3)
    @bus_16.drop_off(@passenger_3)
    passengers_on_board = [@passenger_2]
    assert_equal(passengers_on_board, @bus_16.passengers)
  end

  def test_empty
    assert_equal([], @bus_16.empty)
  end

  def test_pick_up_from_stop
    @leith.add_person_to_queue(@passenger_1)
    @leith.add_person_to_queue(@passenger_2)
    people_queuing = [@passenger_1, @passenger_2]
    @bus_16.pick_up_from_stop(@leith)
    assert_equal(people_queuing, @bus_16.passengers)
  end
end
