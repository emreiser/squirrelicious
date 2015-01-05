require 'spec_helper'

feature 'User view the welcome page', :js do
  scenario 'User can see the welcome words' do
    visit root_path
    expect(page).to have_content "Welcome To Squirrelicious"
  end

  scenario 'User can click on the button and enter the main page' do
    visit root_path
    click_on "Enter Ingredients"
    expect(page).to have_content "Your Ingredients"
    expect(page).to have_content "Your Basket"
  end

end