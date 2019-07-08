module Helper

  # Create a Zombie
  def create_zombie(x,y)
    start = x.to_s + "," + y.to_s
    new_zombie = Zombie.new(start, @input_moves)
    @zombies << new_zombie
    @total_zombies << new_zombie
  end

  # Check if a creature is here
  def creature_here?(zombie, board)
    if board[zombie.location_x][(zombie.location_y)].instance_of?(Creature)
      true
    else
      false
    end
  end

  # Validate that zombie is made and add point
  def validate_point(zombie, board)
    create_zombie(zombie.location_x,zombie.location_y)
    zombie.total_points = zombie.total_points + 1
  end

  # Move in the direction stated. Wrap around grid if it
  # moves beyond the n x n grid
  def zombie_move(zombie, board, n)
    while zombie.moves.size > 0
      case zombie.moves.first
      when "U"
        zombie.zombie_location_y = (zombie.location_y - 1) % n 

      when "D"
        zombie.zombie_location_y = (zombie.location_y + 1) % n

      when "L"
        zombie.zombie_location_x = (zombie.location_x - 1) % n
        
      when "R"
        zombie.zombie_location_x = (zombie.location_x + 1) % n
       
      else
        p "Please check file for valid moves use U,D.L,R"
        exit()
      end
      if creature_here?(zombie, board)
        validate_point(zombie, board)
      end
      zombie.zombie_moves = zombie.zombie_moves.drop(1)
    end
  end
end