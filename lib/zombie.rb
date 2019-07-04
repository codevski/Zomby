class Zombie
  attr_accessor :points

  def initialize(zombie_start)
    @zombie_start = zombie_start
  end

  def location
    @zombie_start_x, @zombie_start_y = @zombie_start.split(",").map(&:to_i)
  end

  def points
    @total_points = 10
  end
end