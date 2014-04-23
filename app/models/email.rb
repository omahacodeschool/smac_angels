class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
  
  def email_new_user(user)
    template = Template.find_by_name("Signup Confirmation")
    send_email(template, user)
  end

  def email_new_requestor(user)
    template = Template.find_by_name("Requestor Signup")
    send_email(template, user)
  end

  def email_new_angel(user)
    template = Template.find_by_name("Angel Signup")
    send_email(template, user)
  end

  def email_angel_shipping_info(user)
    template = Template.find_by_name("Shipping Notification for Angel")
    send_email(template, user)
  end

  def email_requestor_shipping_info(user)
    template = Template.find_by_name("Shipping Notification for Requestor")
    send_email(template, user)
  end

  def email_angel_feedback_notification(user)
    template = Template.find_by_name("Feedback Notification for Angel")
    send_email(template, user)
  end

  def email_requestor_feedback_notification(user)
    template = Template.find_by_name("Feedback Notification for Requestor")
    send_email(template, user)
  end

  def send_email(template, user)
    email = Email.new
    email.content = template.content
    email.subject = template.name
    email.to_addresses = user.email
    if email.save
      UserMailer.email_layout(email).deliver    
    end
  end
end
