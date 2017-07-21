require 'rails_helper'

RSpec.feature "Creating Home Page" do
  scenario do
    visit '/'

    expect(page).to have_link('Workouter')
    expect(page).to have_link('Home')
    expect(page).to have_link('Sign in')
    expect(page).to have_link('Sign up')
    expect(page).to have_content('Workout Lounge') 
    expect(page).to have_content('Show off your workout')
  end
end
