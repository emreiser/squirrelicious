require 'spec_helper'

feature "Sign_up" do

  scenario "a vistor" do
    visit new_user_registration_path
    fill_in 'Email', with: 'joe@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

  end
end
