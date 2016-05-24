feature 'Game over' do
  context 'when player 1 reaches 0 HP first'
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(20)
    end

    scenario 'player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Daniela caput!'
    end
  end
end 
