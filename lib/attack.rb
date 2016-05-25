class Attack
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.damaged(amount)
  end

  private

  def amount
    Kernel.rand(1..10)
  end
end
