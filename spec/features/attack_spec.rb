feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    play_and_attack
    expect(page).to have_content 'Daniela attacked Lucas'
  end
  scenario 'player 2 attacks player 1' do
    play_and_attack
    click_button 'Attack!'
    expect(page).to have_content 'Lucas attacked Daniela'
  end
  scenario 'reduce Player 2 HP by 10' do
    play_and_attack
    expect(page).not_to have_content 'Lucas: 80HP'
    expect(page).to have_content 'Lucas: 70HP'
  end
end
