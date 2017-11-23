require_relative("bus_stop.rb")

class Bus
  attr_reader(:route_number, :destination, :passengers)
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def passenger_number
    return @passengers.count
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    #@passengers = []
    @passengers.clear
  end

  def pick_up_from_stop(bus_stop)
    (@passengers << bus_stop.queue).flatten!
  end
end
