class ApplicationController < ActionController::Base
  # Use this line to require a user to be logged in to view a page
  # before_filter :require_login, :only => :secret
  
  protect_from_forgery
  
  
  private
  
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end
end
