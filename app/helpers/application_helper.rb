module ApplicationHelper
  
  def is_admin?
    User.find(session[:user_id]).is_admin
  end
  
end