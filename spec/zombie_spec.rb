require 'zombie.rb'

RSpec.describe Zombie do

  # Check if you can create Zombie Class
  it 'creates a zombie class' do
    zombie = Zombie.new("0,0","UDLR")
    expect(zombie).to be_kind_of(Zombie)
  end

  # Check and see if you can access Zombie Moves
  it 'moves' do
    zombie = Zombie.new("0,0", "UDLR")
    expect(zombie).to respond_to(:moves)
  end

  # Check that the response to moves is the one we want
  it 'responds correctly to list of moves' do
    zombie = Zombie.new('0,0', 'U')
    expect(zombie.moves).to eq ["U"]
  end

end