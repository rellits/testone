require 'spec_helper'


describe "Static pages" do

  let(:base_title) { "Rails Tutorial" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "should have right title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('Home')
    end
  end 

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Sample App')
      expect(page).to have_content('Help')
    end
    it "should show title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About us'" do
      visit about_path
      expect(page).to have_content('About us')
    end
    it "should have 'about' title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "contact page" do

    it "should have content 'contact us'" do
      visit contact_path
      expect(page).to have_content('Contact us')
    end
    it "should have title 'contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end

  end

end
