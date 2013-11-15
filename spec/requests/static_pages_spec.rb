require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Rails Tutorial | Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Sample App')
      expect(page).to have_content('Help')
    end
    it "should show title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Rails Tutorial | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end
    it "should have 'about' title" do
      visit '/static_pages/about'
      expect(page).to have_title('Rails Tutorial | About')
    end
  end

end
