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
  end
  
  def sign_up

    fill_in("test-email", :with => "test@test.com", :match => :prefer_exact)
    fill_in("test-fname", :with => "rspec")
    fill_in("test-lname", :with => "test")
    fill_in("test-password", :with => "12345")
    fill_in("test-password_confirmation", :with => "12345")
    click_button("Sign Up")
  end
  
  def log_in
    first([:css], "email").fill_in("email", :with => "test@test.com")
    fill_in("password", :with => "12345")
    click_button("submit")
  end
end
