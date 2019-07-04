require 'board.rb'

class ZombieApp

  def self.call(board_size, zombie_start, poor_creatures, moves)
    # @board_size = board_size.to_i #
    # @zombie_start = zombie_start
    # @poor_creatures = poor_creatures.split # convert multiple locations to array
    # @moves = moves 

    # p @board_size
    # p @zombie_start
    # p @poor_creatures
    # p @moves

    # init the board object
    board = Board.new(board_size, zombie_start, poor_creatures, moves)

    # setup the board
    @zombie_board = board.init_board
    # @zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}

    puts @zombie_board.class

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