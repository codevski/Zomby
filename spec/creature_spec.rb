require 'creature.rb'

RSpec.describe Creature do

  # Check if you can create Creature Class
  it 'creates a creature class' do
    creature = Creature.new(0, 1)
    expect(creature).to be_kind_of(Creature)
  end

  # Check if you can call location in Creature
  it 'shows location' do
    creature = Creature.new(0,0)
    expect(creature).to respond_to(:location)
  end

  # check that the response is correct
  it 'returns the correct location' do
    creature = Creature.new(0,1)
    expect(creature.location).to eq [0,1]
  end
end