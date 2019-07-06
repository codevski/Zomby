module Helper

  def zombie_move(zombie, board)
    # p zombie.moves.size
    p "ENTERED MOVE"
    # p zombie
    while zombie.moves.size > 0
      case zombie.moves.first
      when "D"
        if creature_ahead(board[zombie.location_y + 1][zombie.location_x])
          create_zombie(zombie.location_y + 1,zombie.location_x)
        end
        board[zombie.location_y][zombie.location_x] = "."
        board[zombie.location_y + 1][zombie.location_x] = zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
        zombie.zombie_location_y = zombie.location_y + 1
      when "U"
        if creature_ahead(board[zombie.location_y - 1][zombie.location_x])
          create_zombie(zombie.location_y - 1,zombie.location_x)
        end
        board[zombie.location_y][zombie.location_x] = "."
        board[zombie.location_y - 1][zombie.location_x] = zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
        zombie.zombie_location_y = zombie.location_y - 1
      when "L"
        if creature_ahead(board[zombie.location_y][zombie.location_x - 1])
          create_zombie(zombie.location_y,zombie.location_x - 1)
        end
        board[zombie.location_y][zombie.location_x] = "."
        board[zombie.location_y][zombie.location_x - 1] = zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
        zombie.zombie_location_x = zombie.location_x - 1
      when "R"
        if creature_ahead(board[zombie.location_y][zombie.location_x + 1])
          create_zombie(zombie.location_y,zombie.location_x + 1)
        end
        board[zombie.location_y][zombie.location_x] = "."
        board[zombie.location_y][zombie.location_x + 1] = zombie
        zombie.zombie_moves = zombie.zombie_moves.drop(1)
        zombie.zombie_location_x = zombie.location_x + 1
      else
        p "ERROR"
      end
    end
  end

  def update_location(zombie, board)
    # update current zombies location
  end

  def create_zombie(y, x)
    p "TESTTESFSDFSDFSDF"
    start = y.to_s + "," + x.to_s
    p start
    @zombies << Zombie.new(start, @input_moves)
    p "FOUND CREATURE" 
    @zombies
  end

  def creature_ahead(spot)
    p spot
    if spot == "C"
      # CREATURE, MAKE ZOMBIE
           
      # @zombies << Zombie.new(zombie_start, moves)
      true
    else
      false
    end
    # if board[zombie.location_x][zombie.location_y] == C
      # create new zombie a&& add to queue
    # else just do a clean move
  end
  
  
  # Check Spot
  
  # Get Total Points
  
end