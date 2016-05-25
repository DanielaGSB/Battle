class Player
  HIT_POINTS = 60
  attr_reader :name, :hit_points

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def damaged(amount)
    @hit_points -= amount
  end
end
