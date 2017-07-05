class Board

  attr_reader :tiles, :snakes, :ladders

  def initialize
    @tiles = (1..100).to_a
    @snakes = {
    snake1: [17, 7],
    snake2: [54, 34],
    snake3: [62, 19],
    snake4: [64, 60],
    snake5: [87, 36],
    snake6: [93, 73],
    snake7: [95, 75],
    snake8: [98, 79]
  }
    @ladders = {
    ladder1: [1, 38],
    ladder2: [4, 14],
    ladder3: [9, 31],
    ladder4: [21, 42],
    ladder5: [28, 84],
    ladder6: [51, 67],
    ladder7: [72, 91],
    ladder8: [80, 99]
  }
  end


  










end

