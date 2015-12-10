require 'game'

describe Game do
  subject(:game) { described_class.new('Daniela', 'Lucas') }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'damages the player being attacked' do
      expect(player2).to receive(:damaged)
      game.attack(player2)
    end
  end
end
