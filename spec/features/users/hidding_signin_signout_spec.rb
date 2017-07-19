require 'rails_helper'

RSpec.feature "Hidding sign in and sign out links" do
    before do
      User.create!(email: "john@example.com", password: "password", password_confirmation: "password")
    end
 
    scenario "sucessfull sign in" do
     visit "/"
     click_link "Sign in"
     fill_in "Email", with: "john@example.com"
     fill_in "Password", with: "password"
     click_button "Sign in"

     expect(page).to have_link("Sign out")
     expect(page).not_to have_link("Sign in")
     expect(page).not_to have_link("Sign up")
    end
end
