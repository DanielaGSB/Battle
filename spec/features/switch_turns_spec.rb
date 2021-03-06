describe 'Switch turns' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Daniela's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Daniela's turn"
    expect(page).to have_content "Lucas's turn"
  end

end
