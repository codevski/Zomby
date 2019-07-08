require 'board'

RSpec.describe Board do

  # check if you can create Board class
  it 'creates a board class' do
    zombie = Zombie.new('0,0', 'U')
    board = Board.new(4, zombie, "creature", "moves")
    expect(board).to be_kind_of(Board)
  end
end