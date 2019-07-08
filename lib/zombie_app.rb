require 'board.rb'
require 'zombie.rb'
require 'creature.rb'
require 'game.rb'
require 'helper'

include Helper

class ZombieApp

  def self.call(board_size, zombie_start, poor_creatures, input_moves)
    # init zombie object
    zombie = Zombie.new(zombie_start, input_moves.upcase)

    #init creature object
    creatures = poor_creatures.split # convert multiple locations to array

    # Create and Start Game
    new_game = Game.new(zombie, creatures, input_moves, board_size)
    
    new_game.start()    
  end
end