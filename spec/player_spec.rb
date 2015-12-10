require 'player'

describe Player do
  subject(:player1) { described_class.new('Daniela') }
  subject(:player2) { described_class.new('Lucas') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player1.name).to eq 'Daniela'
    end
  end

  describe '#hit_points' do
    it 'returns the players hit points' do
      expect(player1.hit_points).to eq described_class::HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player being attacked' do
      expect(player2).to receive(:damaged)
      player1.attack(player2)
    end
  end

  describe '#damaged' do
    it 'reduces damaged player hit points' do
      expect { player2.damaged }.to change { player2.hit_points }.by(-10)
    end
  end
end
