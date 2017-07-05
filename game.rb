class Game

  def initialize(player1, player2)
    @player1 = [player1, 0]
    @player2 = [player2, 0]
    @die = Die.new
  end


  def roll(player)
    @die.roll 
    if player == @player1[0] 
      @player1[1] += @die.roll
    elsif player == @player2[0]
      @player2[1] += @die.roll
    else "Not a Valid Player"
  end













end