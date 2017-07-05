require ('minitest/autorun')
require_relative ('../board.rb')
require_relative ('../die.rb')
require_relative ('../game.rb')

class GameTest < MiniTest::Test

  def setup
  @game1 = Game.new("Guy", "Andrew")
  end

  def test_start_point
    assert_equal(0, @game1.player1[1])
    assert_equal("Guy", @game1.player1[0])
  end

  # def test_roll
  #   result = @game1.roll("Guy")
  #   assert_equal(4, @game1.player1[1])
  # end

  def test_snake
    @game1.player1[1] = 54
    @game1.check_snake("Guy")
    assert_equal(34, @game1.player1[1])
  end

  def test_ladder
    @game1.player1[1] = 1
    @game1.check_ladder("Guy")
    assert_equal(38, @game1.player1[1])
  end

  def test_win?
    @game1.player1[1] = 100
    assert_equal(true, @game1.win?("Guy"))
  end

  def test_roll_over_100
      @game1.player1[1] = 99
      result = @game1.roll("Guy")
      assert_equal(99, @game1.player1[1])
    end

    def test_run_game
      @game1.run_game("Guy")
      assert_equal(5, @game1.player1[1])
      
    end


end