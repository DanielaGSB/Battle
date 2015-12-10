feature 'Hit points' do
  scenario 'display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'D vs G : 80HP'
  end
end
