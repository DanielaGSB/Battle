require 'player'

describe Player do
  subject(:player1) { described_class.new('Daniela') }
  subject(:player2) { described_class.new('Lucas') }

  describe '#name' do
    it 'returns the name of the first player' do
      expect(player1.name).to eq 'Daniela'
    end
    it 'returns the name of the second player' do
      expect(player2.name).to eq 'Lucas'
    end
  end

  describe '#hit_points' do
    it 'returns the first player hit points' do
      expect(player1.hit_points).to eq described_class::HIT_POINTS
    end
    it 'returns the second player hit points' do
      expect(player2.hit_points).to eq described_class::HIT_POINTS
    end
  end

  describe '#damaged' do
    it 'reduces damaged player hit points' do
      expect { player2.damaged(10) }.to change { player2.hit_points }.by(-10)
    end
    it 'reduces damaged player hit points' do
      expect { player1.damaged(10) }.to change { player1.hit_points }.by(-10)
    end
  end
end
