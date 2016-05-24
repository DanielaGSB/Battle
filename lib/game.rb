require 'forwardable'

class Game

extend Forwardable

def_delegator :player_1, :name, :player_1_name
def_delegator :player_2, :name, :player_2_name
def_delegator :player_2, :hit_points, :player_2_hit_points

attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn = opp(current_turn)
  end

  def opp(current_player)
    @players.select { |player| player != current_player }.first
  end

  private
  attr_reader :players

end
