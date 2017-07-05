require ('minitest/autorun')
require_relative ('../die.rb')

class DieTest < MiniTest::Test

  def setup
    @die1 = Die.new
  end

  def test_die_array
    assert_equal([1, 2, 3, 4, 5, 6], @die1.sides)
  end

  def test_die_roll
    assert_equal(4, @die1.roll)
  end




end
