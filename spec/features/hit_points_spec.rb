feature 'Hit points' do
  scenario 'display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Lucas: 80HP'
  end
end
