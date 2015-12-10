require 'player'

feature 'Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Daniela vs Lucas'
  end
end
