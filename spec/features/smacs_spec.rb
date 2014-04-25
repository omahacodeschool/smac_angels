require 'spec_helper'

describe "SMACs" do

  describe "GET /" do
    
    it "has a sign up link on root" do
      visit "/"
      expect(page).to have_content("Sign Up")
    end
    
    it "provides sign up form when sign up is clicked" do
      visit "/"
      click_link("Sign Up")
      expect(page).to have_content("Sign up for SMAC Angels!")
    end
    
    it "signs up & logs into an account automagically" do
      visit "/"
      click_link("Sign Up")
      sign_up
      expect(page).to have_content("Log Out")
    end
    
    it "can open a new request page" do
      visit "/"
      click_link("Log In")
      log_in
      click_link("Request")
      expect(page).to have_content("Sign Up")
    end
    
    it "has a sign up link on root" do
      visit "/"
      expect(page).to have_content("Sign Up")
    end
  
    it "can create a new request when the request form is presented" do
      FactoryGirl.create(:sockmonkey1)
      FactoryGirl.create(:sockmonkey2)
      FactoryGirl.create(:request_template)
      visit "/"
      click_link("Sign Up")
      sign_up
      click_link("Request")
      save_and_open_page
      fill_in_request
      expect(page).to have_content("Request was successfully created.")
    end

    it "can visit the user profile page" do
      newuser = FactoryGirl.create(:user)
      visit user_path(newuser.id)
      expect(page).to have_content(newuser.lname)
    end
    
    it "" do
      
    end

    def sign_up
      fill_in("test-email", :with => "test@test.com", :match => :prefer_exact)
      fill_in("test-fname", :with => "rspec")
      fill_in("test-lname", :with => "test")
      fill_in("test-password", :with => "12345")
      fill_in("test-password_confirmation", :with => "12345")
      FactoryGirl.create(:signup_template)
      click_button("Sign Up")
    end
    
    def log_in
      find("#primary_email").fill_in("email", :with => "test@test.com")
      fill_in("password", :with                     => "12345")
      click_button("Log In")
    end

    def fill_in_request
      fill_in("request_ship_address", :with => "17653 Mockingbird Ln")
      fill_in("request_ship_city", :with => "Omaha")
      fill_in("request_ship_state", :with => "NE")
      fill_in("request_ship_zipcode", :with => "68128")
      fill_in("request_story", :with => "Some Story")
      check("request_agree_to_terms")
      choose('request_sockmonkey_id_1')
      click_button("Save")
    end
  end
end