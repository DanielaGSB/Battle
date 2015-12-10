feature 'Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'D vs G'
  end
end
