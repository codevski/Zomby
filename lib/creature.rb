class Creature
  def initialize(creature_start)
    @creature_start = creature_start
  end

  def location
    @creature_start_x, @creature_start_y = @creature_start.split(",").map(&:to_i)
  end

  def avatar
    return "C"
  end
end