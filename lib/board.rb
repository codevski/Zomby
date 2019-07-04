class Board
  def initialize(board_size, zombie_start, poor_creatures, moves)
    @board_size = board_size.to_i #
    @zombie_start_x, @zombie_start_y = zombie_start.split(",").map(&:to_i)
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    @moves = moves 
  end

  def init_board
    p @poor_creatures
    # setup board
    @zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # setup start zombie start location && creatures
    @zombie_board[@zombie_start_x][@zombie_start_y] = "x" 
    @zombie_board
    
    # return board
    @zombie_board
  end
end