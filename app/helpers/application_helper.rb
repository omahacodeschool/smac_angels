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
    if !current_user.nil?
      User.find(session[:user_id]).is_admin
    else
      false
    end
  end  
end