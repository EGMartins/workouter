require 'rails_helper'

RSpec.feature "Signing out users" do
    before do
      visit "/"
      click_link "Sign up"
      fill_in "Email", with: "john@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up"
    end

    scenario do

      expect(page).to have_content("Welcome")
      
      click_link "Sign out"

      expect(page).to have_content("Signed out successfully")
    end
end
