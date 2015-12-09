feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')

    fill_in :player_1_name, with: 'D'
    fill_in :player_2_name, with: 'G'
    click_button 'Submit'
    expect(page).to have_content 'D vs G'
  end
end
