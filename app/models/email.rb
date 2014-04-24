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
    email.content = unique_email(email) #replace ((variables)) with "strings"
    if email.save
      UserMailer.email_layout(email).deliver    
    end
  end
  
  # Public: Replaces text within ((parenthesis)) with corresponding data strings
  #
  # Examples
  #
  #   email.content = "Hello, ((name))!"
  #   user.fname = "Bob"
  #
  #   unique_email(email)
  #=> unique_email.content = "Hello, Bob!"
  #
  #
  #   email.content = "Thank you for your help, ((angel))!"
  #   angel.fname = "Angela"
  #
  #   unique_email(email)
  #=> unique_email.content = "Thank you for your help, Angela"
  #
  # Returns the email's modified content
  def unique_email(email)
    user = User.find_by_email(email.to_addresses)
    email.content = email.content.gsub "((name))", user.fname

    if email.request_id
      request = Request.find(email.request_id)
      
      if request.angel_id
        angel = User.find(request.angel_id)
        email.content.gsub "((angel))", angel.fname
      end
      
      requestor = User.find(request.requestor_id)
      email.content.gsub "((requestor))", requestor.fname

      sockmonkey = Sockmonkey.find(request.sockmonkey_id)
      email.content.gsub "((sockmonkey))", sockmonkey.name
    end
    email.content
  end
  
end
