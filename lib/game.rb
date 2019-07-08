class Game
  def initialize(zombie, creatures, input_moves, board_size)
    @zombie       = zombie
    @input_moves  = input_moves
    @creatures    = creatures
    @board_size   = board_size.to_i 
    @total_points = 0
  end

  def setup_board
    # Setting up the N X N board
    zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # Place Zombie on Board
    zombie_board[@zombie.location_x][@zombie.location_y] = @zombie

    # Place Creatures on Board
    @creatures.each do |creature|
      creature_start_x, creature_start_y = creature.split(",").map(&:to_i)
      zombie_board[creature_start_x][creature_start_y] = Creature.new(creature_start_x, creature_start_y)
    end
    
    zombie_board
  end

  def start
    # initialise the board setup
    @zombie_board = setup_board()

    # create zombie queue to track which zombie is next
    @zombies = [@zombie]

    # keep record of all zombies
    @total_zombies = [@zombie]
    
    # while there are zombies in array && there are moves left
    while @zombies.size > 0
      zombie_move(@zombies.first, @zombie_board, @board_size)

      # Once all moves completed. Move onto the next zombie
      @zombies = @zombies.drop(1)
    end
    
    @total_zombies
  end
end