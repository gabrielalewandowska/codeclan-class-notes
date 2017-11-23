require("minitest/autorun")
require_relative("../agent")


class TestAgent < MiniTest::Test

  def setup
    @agent_1 = Agent.new("Jack", "Robinson")
  end

  def test_agent_has_name
    assert_equal("Jack", @agent_1.first_name)
  end

  def test_agent_talks
    assert_equal("The name's Robinson, Jack Robinson", @agent_1.talk)
  end


end
