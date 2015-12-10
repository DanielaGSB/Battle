feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Daniela attacked Lucas'
  end
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Ok'
    expect(page).not_to have_content 'Lucas: 80HP'
    expect(page).to have_content 'Lucas: 70HP'
  end
end
