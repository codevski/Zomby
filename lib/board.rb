class Board
  def initialize(board_size, zombie_start, poor_creatures, moves)
    @board_size = board_size.to_i #
    @zombie_start_x, @zombie_start_y = zombie_start
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    @poor_creatures.each {|item| p item.split(',').map(&:to_i)}
    @moves = moves 
  end

  def init_board
    # setup board
    @zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # setup start zombie start location && creatures
    @zombie_board[@zombie_start_x][@zombie_start_y] = "Z" 

    # attempt to place creates on board
    @poor_creatures.each do |item|
      creature_start_x, creature_start_y = item.split(",").map(&:to_i)
      @zombie_board[creature_start_x][creature_start_y] = "C" 
    end

    @zombie_board
    
    # return board
    @zombie_board
  end

  def move(zombie_moves)
    # perhaps to re-render the board on a move with updated locations of zombies

  end

  def print_board
    row_label = ["0", "1", "2", "3"]
    column_label = ["0", "1", "2", "3"]
    print "\t"
    print row_label.join("\t")
    puts
    @zombie_board.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      print row.join("\t")
      puts
    end
  end
end