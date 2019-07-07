require 'game.rb'

RSpec.describe Game do

  # check if you can start a new game
  it 'creates a new game' do
    new_game = Game.new()
    expect(new_game).to be_kind_of(Game)
  end

end