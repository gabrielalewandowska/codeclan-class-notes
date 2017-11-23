require("minitest/autorun")
require_relative("../motorbike")

class TestMotorbike < MiniTest::Test
  def test_motorbike_can_start_engine
    motorbike = Motorbike.new
    result = motorbike.start_engine
    assert_equal("Vrrmmm (HELL YEAH!)", result)
  end
end
