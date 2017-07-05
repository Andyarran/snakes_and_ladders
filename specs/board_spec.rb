require ('minitest/autorun')
require_relative ('../board.rb')
require_relative ('../die.rb')

class BoardTest < MiniTest::Test

  def setup
  @board1 = Board.new
  end

  def test_number_of_board_tiles
    assert_equal(100, @board1.tiles.count)
  end

  # def test_start_point
  #   assert_equal(0, @board1.player1[1])
  #   assert_equal("Guy", @board1.player1[0])
  # end

  # def test_roll
  #   result = @board1.roll("Guy")
  #   assert_equal(4, @board1.player1[1])
  # end

end