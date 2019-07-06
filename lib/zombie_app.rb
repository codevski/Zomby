require 'board.rb'
require 'zombie.rb'
require 'creature.rb'
require 'game.rb'
require 'helper'

include Helper

class ZombieApp

  def self.call(board_size, zombie_start, poor_creatures, moves)
    # init zombie object
    zombie = Zombie.new(zombie_start, moves)

    # p zombie.location
    #init creature object
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    creatures = @poor_creatures.each {|xy| xy.split(',').map(&:to_i)}

    # init the board object
    board = Board.new(board_size, zombie, poor_creatures, moves)

    # setup the board
    zombie_board = board.init_board

    new_game = Game.new(zombie, zombie_board, moves, zombie_start)

    score = new_game.start()

    # start new game
    # score = Game.start
    # make the moves
    # while there are zombies in array && there are moves left
    # board.start(zombie)
    # new_game = Game.new(zombie)

    

    # print board
    # board
    board.print_board(score)
  end

end