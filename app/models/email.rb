class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  
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
  # def send_email(template_string, user)
  def send_email(*email_info)
    template = Template.find_by_name(email_info[0])
    email = Email.new
    email.content = template.content
    email.subject = template.name
    email.to_addresses = email_info[1].email
    if email_info[2]
      email.request_id = email_info[2]
    end
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
    binding.pry
    user = User.find_by_email(email.to_addresses)
    email.content = email.content.gsub "((name))", user.fname

    if email.request_id
      binding.pry
      request = Request.find(email.request_id)
      requestor = User.find(request.requestor_id)
      email.content = email.content.gsub "((requestor))", requestor.fname
      
      if request.sockmonkey_id
        sockmonkey = Sockmonkey.find(request.sockmonkey_id)
        email.content = email.content.gsub "((sockmonkey))", sockmonkey.name
      end

      if request.angel_id
        angel = User.find(request.angel_id)
        email.content = email.content.gsub "((angel))", angel.fname
      end
      binding.pry 

    end
    email.content
  end
  
end
