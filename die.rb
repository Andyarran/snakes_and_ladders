class Die

attr_reader :sides

  def initialize
    @sides = [1, 2, 3, 4, 5, 6]
  end

  def roll
    return @sides.sample
  end



end