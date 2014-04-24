module ApplicationHelper
  
  # Public: Checks User admin status
  #
  # Examples
  #
  #   current_user
  #   # => true
  #
  # Returns boolean
  def is_admin?
    User.find(session[:user_id]).is_admin
  end
  
end