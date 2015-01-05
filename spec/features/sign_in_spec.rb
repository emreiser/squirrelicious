require 'spec_helper'

feature 'Sign_in' do
  scenario 'a signed up user' do
    visit new_user_session_path do
      fill_in 'Email', with: 'joe@example.com'
      fill_in 'Password', with: 'password'
      click_on 'Sign in'
    end
  end
end