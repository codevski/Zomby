class Board
  attr_accessor :board_size
  
  def initialize(board_size, zombie, poor_creatures, moves)
    @board_size = board_size.to_i 
    @zombie = zombie
    @zombie_start_x, @zombie_start_y =  @zombie.location_x, @zombie.location_y
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    @moves = moves 
  end
end