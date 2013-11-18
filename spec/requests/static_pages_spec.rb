require 'spec_helper'


describe "Static pages" do

  let(:base_title) { "Rails Tutorial" }


  subject { page }

  shared_examples_for "all static pages" do
    it {should have_selector('h1', text: heading)}    
    it {should have_title(full_title(page_title))}
  end


  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App'}
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title("Home")}
    
  end 

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help'}
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
    it { should have_content('Sample App') }

  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About Sample App'}
    let(:page_title) { 'About' }

    it_should_behave_like "all static pages"

  end

  describe "contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact us'}
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"

  end

  it "should have correct links in layout" do

    visit root_path
    click_link "About"
    expect(page).to have_title(full_title("About"))
    click_link "Contact us"
    expect(page).to have_title(full_title("Contact"))
    click_link "Help"
    expect(page).to have_title(full_title("Help"))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title("Sign up"))
    click_link "Sample App"
    expect(page).to have_title(full_title(""))

  end

end
