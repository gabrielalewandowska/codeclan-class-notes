require("minitest/autorun")
require_relative("../medic")

class TestMedic < MiniTest::Test

  def setup
    @medic_1 = Medic.new("Beatrix", "Jenkins")
  end

  def test_medic_has_name
    assert_equal("Beatrix", @medic_1.first_name)
  end

  def test_medic_can_heal
    assert_equal("Yield, and you may be healed.", @medic_1.heal)
  end

  def test_medic_can_talk
    assert_equal("My name is Beatrix Jenkins", @medic_1.talk)
  end

end
