class Player
  HIT_POINTS = 80
  attr_reader :name, :hit_points

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.damaged
  end

  def damaged
    @hit_points -=10
  end
end
