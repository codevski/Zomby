class Game
  def initialize(zombie, creatures, input_moves, board_size)
    @zombie = zombie
    @input_moves = input_moves
    @creatures = creatures
    # @zombie_start = zombie_start
    @board_size = board_size.to_i 
    @total_points = 0
  end

  def setup_board
    # setup board
    #change cname to set_board
    zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # Set Zombie Location
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

    # start the zombie game with given zombie
    @zombies = [@zombie]
    @total_zombies = [@zombie]
    
    # while there are zombies in array && there are moves left
    while @zombies.size > 0
      zombie_move(@zombies.first, @zombie_board, @board_size)

      # Completed all moves. Move onto the next zombie
      @zombies = @zombies.drop(1)
    end
    
    @total_zombies
  end
end