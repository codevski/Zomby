class Game
  def initialize(zombie, board, input_moves, zombie_start)
    @zombie = zombie
    @board = board #set board for a new game
    @input_moves = input_moves
    @zombie_start = zombie_start
    @total_points = 0
  end

  def start
    # initialise the board setup
    @zombie_board = @board.set_board

    # start the zombie game with given zombie
    @zombies = [@zombie]
    @total_zombies = [@zombie]
    
    # while there are zombies in array && there are moves left
    while @zombies.size > 0
      zombie_move(@zombies.first, @zombie_board, @board.board_size)

      # Completed all moves. Move onto the next zombie
      @zombies = @zombies.drop(1)
    end
    
    @total_zombies
  end
end