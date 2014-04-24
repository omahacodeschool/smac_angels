class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
  
  # Public: 
  # Create email object, 
  # Populate email with user info and template
  # Save email object and send email if save is successful
  #
  # Examples
  #
  # Email.new.send_email("Signup Confirmation", @user)
  # This sends an email to @user 
  # with content from template named "Signup Confirmation"
  def send_email(template_string, user)
    template = Template.find_by_name(template_string)
    email = Email.new
    email.content = template.content
    email.subject = template.name
    email.to_addresses = user.email
    if email.save
      UserMailer.email_layout(email).deliver    
    end
  end
end
