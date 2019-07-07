class Game
  def initialize(zombie, board, input_moves, zombie_start)
    @zombie = zombie
    @board = board
    @input_moves = input_moves
    @zombie_start = zombie_start
  end

  # class << self
    def start
      # start the zombie game with given zombie
      # while there are zombies in array && there are moves left
      @zombies = [@zombie]
      @total_zombies = [@zombie]
      p @zombies.size
      
      while @zombies.size > 0
        # p @zombies[0]
        @zombie = @zombies[0]
        # p "Z-1"
        # p @zombies
        zombie_move(@zombie, @board)
        # p board
        # p "Z-2"
        # p @zombies
        @zombies = @zombies.drop(1)
        # p "Z-3"
        # p @zombies
      end
  
      # p "WHAT IS LOCATION"
      # p @zombies.start
  
     
      @total_zombies
      # current location
      # row = @zombie_board.detect{|aa| aa.include?(@zombie)}
      # p [@zombie_board.index(row), row.index(@zombie)]
    end
  # end
end