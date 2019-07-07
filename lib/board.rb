class Board
  attr_accessor :board_size
  
  def initialize(board_size, zombie, poor_creatures, moves)
    @board_size = board_size.to_i 
    @zombie = zombie
    @zombie_start_x, @zombie_start_y =  @zombie.location_x, @zombie.location_y
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    @moves = moves 
  end

  def set_board
    # setup board
    #change cname to set_board
    @zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # Set Zombie Location
    @zombie_board[@zombie_start_x][@zombie_start_y] = @zombie

    # Place Creatures on Board
    @poor_creatures.each do |creature|
      creature_start_x, creature_start_y = creature.split(",").map(&:to_i)
      @zombie_board[creature_start_x][creature_start_y] = Creature.new(creature_start_x, creature_start_y)
    end
    
    @zombie_board
  end

  def print_board(zombies)
    puts "Game Over"
    puts "Zombie Score: #{zombies.map(&:points).sum}"
    print "Zombie Positions: "
    zombies.each{|item| print item.location }
    puts " "
  end
end