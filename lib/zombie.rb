class Zombie
  attr_accessor :points, :zombie_moves, :zombie_location_x, :zombie_location_y

  def initialize(zombie_start, zombie_moves)
    @zombie_start = zombie_start
    @zombie_moves = zombie_moves.split('')
    @total_points = 0
    @zombie_location_y, @zombie_location_x = @zombie_start.split(",").map(&:to_i)
  end

  def location
    [@zombie_location_y, @zombie_location_x]
  end

  def location_x
    @zombie_location_x
  end

  def location_y
    @zombie_location_y
  end

  def moves
    @zombie_moves
  end

  def avatar
    return "Z"
  end

  def points
    @total_points
  end
end