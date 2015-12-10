require 'player'

describe Player do
  subject(:daniela) { Player.new('Daniela') }

  describe '#name' do
    it 'returns the name' do
      expect(daniela.name).to eq 'Daniela'
    end
  end
end
