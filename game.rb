class Game

attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = [player1, 0]
    @player2 = [player2, 0]
    @die = Die.new
    @board = Board.new
  end


  def roll(player) 
    

    if player == @player1[0] 
      player_roll_start_position = @player1[1]
      your_roll = @die.roll
      @player1[1] += your_roll
      if @player1[1] > 100
        puts "You are on #{player_roll_start_position} you need to roll #{100 -player_roll_start_position} to win"
        @player1[1] = player_roll_start_position
      else
      puts "You rolled a #{your_roll} and are now on Tile #{@player1[1]}."
      end
    elsif player == @player2[0]
      player_roll_start_position = @player2[1]
      your_roll = @die.roll
      @player2[1] += your_roll
      if @player2[1] > 100
        puts "You are on #{player_roll_start_position} you need to roll #{100 -player_roll_start_position} to win"
        @player2[1] = player_roll_start_position
      else
      puts "You rolled a #{your_roll} and are now on Tile #{@player2[1]}."
      end
    else "Not a Valid Player"
    end
  end

  def check_snake(player)
    for snake in @board.snakes.values
      if @player1[1] == snake[0] && player == @player1[0] 
        @player1[1] = snake[1]
        puts "Oh no #{player}, you landed on a Snake and moved to tile #{@player1[1]}."

      elsif  @player2[1] == snake[0] && player == @player2[0] 
        @player2[1] = snake[1]
        puts "Oh no #{player}, you landed on a Snake and moved to tile #{@player2[1]}."
      end
    end
  end


    def check_ladder(player)
      for ladder in @board.ladders.values
        if @player1[1] == ladder[0] && player == @player1[0] 
          @player1[1] = ladder[1]
          puts "Fantastic #{player}, you landed on a Ladder and moved to tile #{@player1[1]}."

        elsif  @player2[1] == ladder[0] && player == @player2[0] 
          @player2[1] = ladder[1]
          puts "Fantastic #{player}, you landed on a Ladder and moved to tile #{@player2[1]}."
        end
      end
    end

    def win?(player)
      if @player1[0] == player && @player1[1] == 100
        puts "Well done #{player} you have won the game!!"
        return false
      elsif @player2[0] == player && @player2[1] == 100
        puts "Well done #{player} you have won the game!!"
        return false
      else 
        return true
      end
      
    end

    def run_game(player)
      roll(player)
      check_ladder(player)
      check_snake(player)
      win?(player)
    end

end