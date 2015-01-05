require 'spec_helper'

feature 'User can select Ingredients for the Basket', :js do

  scenario 'user can click on an ingredients and it appears in the basket' do
    visit root_path
    expect(page).to have_content "Welcome To Squirrelicious"
    click_on "Enter Ingredients"
    expect(page).to have_content "Your Ingredients"
    expect(page).to have_content "Your Basket"
    expect(page).to have_content "Steak"
    # puts "Ingredients are #{Ingredient.all.map(&:name).join(',')}"
    click_on "Steak"
    # save_and_open_page
    # sleep(5) # nopes still fails
    # sleep(20) # seems to pass when this is the case
    find('#basket-container')
    within('#basket-container') do
      expect(page).to have_content('Steak')
      expect(page).to have_css("#basket_ingredient_1")
    end
    #page.save_screenshot('test.png')
  end
end

# note on testing - this test does not pass in a consistent fashion
# when running  it - fails  about 3/20 times when sleep is set to 5
# this failure is not seen AT ALL in the real live site or when running local


