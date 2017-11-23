require("minitest/autorun")
require_relative("../vehicle")

class TestVehicle < MiniTest::Test
  def test_vehicle_can_start_engine
    motorbike = Vehicle.new
    result = motorbike.start_engine
    assert_equal("Vrrmmm", result)
  end

end
