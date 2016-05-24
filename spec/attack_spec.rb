require 'attack'

describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe '.run' do
    it 'damages the player being attacked' do
      expect(player).to receive(:damaged)
      object.run(player)
    end
  end
end
