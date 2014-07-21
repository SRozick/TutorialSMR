# spec_helper configures all the helper files for rspec
# this file configures all the tests for this project
require 'spec_helper'

describe "Static pages" do

# test static pages/ about page for content About Us
describe "About page" do
  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end
end

# test static pages/ help page for content Help
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

# test static pages/ home page for content Sample App
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end

