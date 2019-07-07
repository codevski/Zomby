class Creature
  def initialize(creature_start_x, creature_start_y)
    @creature_start_x = creature_start_x
    @creature_start_y = creature_start_y
  end

  # extensibility 
  def location
    [@creature_start_x, @creature_start_y]
  end
end