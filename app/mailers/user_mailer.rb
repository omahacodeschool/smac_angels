class UserMailer < ActionMailer::Base
  from_address = Mail::Address.new "matthova87@gmail.com"
  from_address.display_name = "SMAC Monkey"
  default from: from_address.format

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #  en.site_mailer.recap.subject
  #
  def email_layout(email)    
    @email = email
    mail({
      :to => email.to_addresses,
      :subject => email.subject
    })
  end
end