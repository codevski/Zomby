class Board
  def initialize(board_size, zombie, poor_creatures, moves)
    @board_size = board_size.to_i 
    @zombie = zombie
    @zombie_start_x, @zombie_start_y =  @zombie.location_x, @zombie.location_y
    @poor_creatures = poor_creatures.split # convert multiple locations to array
    @poor_creatures.each {|item| p item.split(',').map(&:to_i)}
    @moves = moves 
  end

  def init_board
    # setup board
    @zombie_board = Array.new(@board_size, ".").map{|row| Array.new(@board_size, ".")}
    
    # setup start zombie start location && creatures
    @zombie_board[@zombie_start_x][@zombie_start_y] = @zombie

    # p @zombie_start_x
    # p @zombie_start_y

    # attempt to place creates on board
    @poor_creatures.each do |item|
      p item
      creature_start_x, creature_start_y = item.split(",").map(&:to_i)
      @zombie_board[creature_start_x][creature_start_y] = "C" 
    end

    @zombie_board
    # @zombie_board[0][1] = "."
    
    # return board
    @zombie_board
  end

  

  # def start(zombie)
  #   # start the zombie game with given zombie
  #   # while there are zombies in array && there are moves left
  #   @zombies = [zombie]
  #   @total_zombies = [zombie]
  #   p @zombies.size
    
  #   while @zombies.size > 0
  #     p @zombies[0]
  #     @zombies = @zombies.drop(1)
  #   end


  #   print_board(@total_zombies)
  #   # current location
  #   # row = @zombie_board.detect{|aa| aa.include?(@zombie)}
  #   # p [@zombie_board.index(row), row.index(@zombie)]
  # end

  def print_board(zombies)
    # @zombie_locations = Array.new
    # p "Settings up Board!"
    # p "Current Starting Position"
    # row_label = ["0", "1", "2", "3"]
    # column_label = ["0", "1", "2", "3"]
    # print "\t"
    # print row_label.join("\t")
    # puts
    # @zombie_board.each_with_index do |row, i|
    #   print column_label[i]
    #   print "\t"
    #   row = row.map{|x| x.class == Zombie ?  "Z" : x}
    #   row = row.map{|x| x.class == Creature ?  "C" : x}
    #   print row.join("\t")
    #   puts
    # end

    puts "Game Over"
    p @zombie_board[2][1]
    puts "Zombie Score: #{zombies.map(&:points).sum}"
    print "Zombie Positions: "
    zombies.each{|item| print item.location }
    puts " "
  end
end