class Die

attr_reader :sides, :roll

  def initialize
    @sides = [1, 2, 3, 4, 5, 6]
    @roll = @sides.sample
  end



end