def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'D'
  fill_in :player_2_name, with: 'G'
  click_button 'Submit'
end
