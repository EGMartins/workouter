require 'rails_helper'

RSpec.feature "User Signup" do
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content("signed up successfully")
  end
end
