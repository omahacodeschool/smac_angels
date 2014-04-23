class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
  
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
