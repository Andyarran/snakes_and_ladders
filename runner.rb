require_relative ('./board.rb')
require_relative ('./die.rb')
require_relative ('./game.rb')

puts "Welcome to Snakes and Ladders\n"

while true
  puts "If you want to exit at anypoint press q\n"
  puts "Please enter player one's name\n"
  user1 = gets.chomp
  puts "Please enter player two's name\n"
  user2 = gets.chomp
  # if user1.downcase || user2.downcase == "q"
  #   break
  # else 
  @game1 = Game.new(user1, user2)
  while true
    puts "Welcome #{user1} and #{user2}, are you ready to play?\n"
    puts "#{user1} if you're ready to start input roll\n"
    input = gets.chomp
     if input.downcase == "roll"
       @game1.run_game(user1) 
     elsif input.downcase == "q"
         break
    end
    puts "#{user2} if you're ready to start input roll"
    input = gets.chomp
      if input.downcase == "roll"
        @game1.run_game(user2) 
      elsif input.downcase == "q"
          break
      end
    redo
end
end 