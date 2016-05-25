feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    play_and_attack
    expect(page).to have_content 'Daniela attacked Lucas'
  end
  scenario 'player 2 attacks player 1' do
    play_and_attack
    click_button 'Ok'
    click_button 'Attack!'
    expect(page).to have_content 'Lucas attacked Daniela'
  end

  context 'when dealing set damage' do
   before do
     allow(Kernel).to receive(:rand).and_return(10)
   end

    scenario 'reduce player 2 HP by 10' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Lucas: 60HP'
      expect(page).to have_content 'Lucas: 50HP'
    end

    scenario 'reduce Player 1 HP by 10' do
     sign_in_and_play
     2.times { attack_and_confirm }
     expect(page).not_to have_content 'Daniela: 60HP'
     expect(page).to have_content 'Daniela: 50HP'
   end
  end
end
