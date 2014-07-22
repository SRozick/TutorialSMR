# spec_helper configures all the helper files for rspec
# this file configures all the tests for this project
require 'spec_helper'

# tests for Static pages controller
describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  # tests for contact page
  describe "Contact page" do

    # check title = Ruby on Rails Tutorial Sample App | Contact Us
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

    # check content contains "Contact Us"
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end

  # tests for about page
  describe "About page" do

    # check title = 'Ruby on Rails Tutorial Sample App | About Us'
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end

    # check content contains "About Us"
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  # tests for Help page
  describe "Help page" do

    # check title = Ruby on Rails Tutorial Sample App | Help
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end

    # check content contains 'Help'
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  # tests for Home page
  describe "Home page" do

    # check title = Ruby on Rails Tutorial Sample App | Home
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    # check content contains 'About Us'
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    # custom page title not applied
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
end

