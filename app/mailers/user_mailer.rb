class UserMailer < ActionMailer::Base
  from_address = Mail::Address.new "matthova87@gmail.com"
  from_address.display_name = "SMAC Angels"
  default from: from_address.format

  # Public: Parse email object and push to email_layout view
  #
  # Examples
  #
  # UserMailer.email_layout(email).deliver
  # ^ This will send an email to email.to_addresses
  # with the subject email.subject
  # 
  # The email's content will be rendered by email_layout.text.erb
  def email_layout(email)    
    @email = email
    mail({
      :to => email.to_addresses,
      :subject => email.subject
    })
  end
  
  def reset_password_email(user)
    @user = user
    @url  = edit_password_reset_url(user.reset_password_token)
    mail(:to => user.email,
         :subject => "Your password has been reset")
  end
end