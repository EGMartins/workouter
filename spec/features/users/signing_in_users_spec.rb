require 'rails_helper'

RSpec.feature "Sing In User" do
  before do
    User.create!(email: "john@example.com", password: "password", password_confirmation: "password")
  end
  scenario "with correct credencials" do
    visit '/'
    click_link "Sign in"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    click_button "Sign in"

    expect(page).to have_content("Signed in successfully")
  end
end
