def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Daniela'
  fill_in :player_2_name, with: 'Lucas'
  click_button 'Submit'
end

def play_and_attack
  visit('/')
  fill_in :player_1_name, with: 'Daniela'
  fill_in :player_2_name, with: 'Lucas'
  click_button 'Submit'
  click_button 'Attack!'
  # click_button 'Ok'
end
