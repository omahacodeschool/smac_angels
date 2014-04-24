class UserMailer < ActionMailer::Base
  from_address = Mail::Address.new "matthova87@gmail.com"
  from_address.display_name = "SMAC Monkey"
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
end