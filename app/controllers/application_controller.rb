class ApplicationController < ActionController::Base
  # Use this line to require a user to be logged in to view a page
  # before_filter :require_login, :only => :secret
  
  protect_from_forgery
  
  # Public: Set current_user based on session's user id
  #
  # Examples
  #
  #   current_user
  #   # => current_user
  #
  # Returns the current user
  def current_user
    if session[:user_id]
      current_user ||= User.find(session[:user_id])
    end
    return current_user
  end
  
  private
  
  # Private: Send client to login page if they are not logged in
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end

  
end
