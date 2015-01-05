require 'spec_helper'

feature 'Visitor view all the ingredient of protein in the main page', :js do
  background do
    @ingredient = create(:ingredient)
  end
  scenario 'visitor click on the button on the welcome page and enter the home page' do

    visit root_path
    click_on "Enter Ingredients"
    expect(page).to have_content "Protein Vegetable Sauce Spice Dairy Starch"

  end

end