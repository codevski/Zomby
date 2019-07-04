require 'board.rb'
require 'zombie.rb'

class ZombieApp

  def self.call(board_size, zombie_start, poor_creatures, moves)
    # init zombie object
    zombie = Zombie.new(zombie_start)

    # p zombie.location
    #init creature object
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    creatures = @poor_creatures.each {|xy| xy.split(',').map(&:to_i)}

    # init the board object
    board = Board.new(board_size, zombie.location, poor_creatures, moves)

    # setup the board
    board.init_board

    # make the moves
    # while there are zombies in array && there are moves left
    # board.move(zombie)

    # print board
    board
  end

end