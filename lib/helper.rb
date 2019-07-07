module Helper

  def create_zombie(x,y)
    # p "CREATING ZOMBIE"
    start = x.to_s + "," + y.to_s
    # p start
    new_zombie = Zombie.new(start, @input_moves)
    # p new_zombie
    @total_zombies << new_zombie
    @zombies << new_zombie
    # @zombies << new_zombie
    @total_zombies
    # return "x"
    # @zombies
  end

  def check_move

  end

  def zombie_move(zombie, board, n)
    # p zombie.moves.size
    # set current zombie location
    # p "ENTERED MOVE"
    # p zombie
    # p zombie
    while zombie.moves.size > 0
      case zombie.moves.first
      when "U"
        # p zombie
        # if next spot is empty
        if board[zombie.location_x][(zombie.location_y - 1) % n] == "." || board[zombie.location_x][(zombie.location_y - 1) % n].instance_of?(Zombie)
          # p "D-1"
        board[zombie.location_x][zombie.location_y] = "."
        board[zombie.location_x][(zombie.location_y - 1) % n] = zombie
        # set zombie new location
        zombie.zombie_location_y = (zombie.location_y - 1) % n
        # p zombie
        elsif board[zombie.location_x][(zombie.location_y - 1) % n] == "C"
          # p "D-2"
          board[zombie.location_x][(zombie.location_y - 1) % n] = zombie
          zombie.zombie_location_y = (zombie.location_y - 1) % n
          #create zombie place in spot
          
          zombie.total_points = zombie.total_points + 1
          create_zombie(zombie.location_x,zombie.location_y)
          # p zombie
        else
          # p "D-3"
          # board[zombie.location_x][(zombie.location_y - 1) % n] = zombie
          # # set zombie new location
          # zombie.zombie_location_y = (zombie.location_y - 1) % n
          # p zombie
        end
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
      when "D"
        # p "IM D"
        if board[zombie.location_x][(zombie.location_y + 1) % n] == "." || board[zombie.location_x][(zombie.location_y + 1) % n].instance_of?(Zombie)
          # p "T-1"
          board[zombie.location_x][zombie.location_y] = "."
          board[zombie.location_x][(zombie.location_y + 1) % n] = zombie
          # set zombie new location
          zombie.zombie_location_y = (zombie.location_y + 1) % n
          # p zombie
        elsif board[zombie.location_x][(zombie.location_y + 1) % n] == "C"
          # p "T-2"
          board[zombie.location_x][(zombie.location_y + 1) % n] = zombie
          zombie.zombie_location_y = (zombie.location_y + 1) % n
          #create zombie place in spot
          
          zombie.total_points = zombie.total_points + 1
          create_zombie(zombie.location_x,zombie.location_y)
        else
          # p "T-3"
          # p board[zombie.location_x][(zombie.location_y + 1) % n]
          # board[zombie.location_x][zombie.location_y] = "."
          # board[zombie.location_x][(zombie.location_y + 1) % n] = zombie
          # # set zombie new location
          # zombie.zombie_location_y = (zombie.location_y + 1) % n
          # p zombie
        end
        # p "T-n"
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
      when "L"
        if board[(zombie.location_x - 1) % n][zombie.location_y] == "." || board[(zombie.location_x - 1) % n][zombie.location_y].instance_of?(Zombie)
          # p "L-1"
          board[zombie.location_x][zombie.location_y] = "."
          # set new spot to zombile
          board[(zombie.location_x - 1) % n][zombie.location_y] = zombie
          # set zombies new location
          
          zombie.zombie_location_x = (zombie.location_x - 1) % n
          # p zombie
        elsif board[(zombie.location_x - 1) % n][zombie.location_y] == "C"
          # p "L-2"
          board[(zombie.location_x - 1) % n][zombie.location_y] = zombie
          # create_zombie((zombie.location_y - 1) % n,zombie.location_x)
          zombie.zombie_location_x = (zombie.location_x - 1) % n
          #create zombie place in spot
          zombie.total_points = zombie.total_points + 1
          create_zombie(zombie.location_x,zombie.location_y)
        else
          # p "L-3"
          # board[(zombie.location_x - 1) % n][zombie.location_y] = zombie
          # # set zombie new location
          # zombie.zombie_location_x = (zombie.location_x - 1) % n
        end
        # p "L-n"
        # p "OLD OR NEW"
        # p zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
      when "R"
        if board[(zombie.location_x + 1) % n][zombie.location_y] == "." || board[(zombie.location_x + 1) % n][zombie.location_y].instance_of?(Zombie)
          # p "L-1"
          board[zombie.location_x][zombie.location_y] = "."
          # set new spot to zombile
          board[(zombie.location_x + 1) % n][zombie.location_y] = zombie
          # set zombies new location
          
          zombie.zombie_location_x = (zombie.location_x + 1) % n
          # p zombie
        elsif board[(zombie.location_x + 1) % n][zombie.location_y] == "C"
          # p "L-2"
          board[(zombie.location_x + 1) % n][zombie.location_y] = zombie
          # create_zombie((zombie.location_y - 1) % n,zombie.location_x)
          zombie.zombie_location_x = (zombie.location_x + 1) % n
          #create zombie place in spot
          zombie.total_points = zombie.total_points + 1
          create_zombie(zombie.location_x,zombie.location_y)
        else
          # p "L-3"
          # board[(zombie.location_x + 1) % n][zombie.location_y] = zombie
          # # set zombie new location
          # zombie.zombie_location_x = (zombie.location_x + 1) % n
        end
        # p "L-n"
        # p "OLD OR NEW"
        # p zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
      else
        # p "L-5"
        board[zombie.location_y][zombie.location_x] = zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
      end
    end
  end

  
  
  # Check Spot
  
  # Get Total Points
  
end