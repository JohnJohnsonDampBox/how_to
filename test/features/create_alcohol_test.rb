require "test_helper"

feature "As the site owner, I want to add a new alcohol" do
  scenario "adding a new alcohol" do
    visit alcohols_path
    click_on "New Alcohol"
    fill_in "Name", with: "Booze"
    fill_in "Description", with: "made of booze"
    fill_in "Ingredients", with: "fermented shit"
    click_on "Create Alcohol"
    page.text.must_include "created"
    page.text.must_include "Booze"
    page.text.must_include "fermented shit"
  end
end
