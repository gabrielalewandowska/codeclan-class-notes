require('minitest/autorun')
require_relative('my_functions')

class FunctionsTest < MiniTest::Test
  def test_greet
    expected = "Good morning, Craig"
    actual = greet("Craig", "morning")
    assert_equal(expected, actual)
  end
end

class FunctionsTest < MiniTest::Test
  def test_add
    expected = 5
    actual = add(2, 3)
    assert_equal(expected, actual)
  end

  def test_population_density
    expected = 68
    actual = population_density(5373000, 77933)
    assert_equal(expected, actual)
  end
end
