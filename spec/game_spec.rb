require 'game.rb'

RSpec.describe Game do

  # check if you can start a new game
  it 'creates a new game' do
    zombie = Zombie.new("0,0","UDLR")
    creature = Creature.new(0, 1)
    new_game = Game.new(zombie, creature, 'U', 4)
    expect(new_game).to be_kind_of(Game)
  end

  # check if you can start a game
  it 'starts a new game' do
    zombie = Zombie.new("0,0","UDLR")
    creature = Creature.new(0, 1)
    new_game = Game.new(zombie, creature, 'U', 4)
    expect(new_game).to respond_to(:start)
  end

end