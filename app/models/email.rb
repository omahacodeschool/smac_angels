class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
  
  def email_new_user(user)
    template = Template.find_by_name("Signup Confirmation")

    @email = email_init(template)
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_new_request(user)
    @template = Template.find_by_name("Requestor Signup")

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_new_user(user)
    @template = Template.find_by_name("Signup Confirmation")

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_new_user(user)
    @template = Template.find_by_name("Signup Confirmation")

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_new_user(user)
    @template = Template.find_by_name("Signup Confirmation")

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_new_user(user)
    @template = Template.find_by_name("Signup Confirmation")

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.to_addresses = user.email

    if @email.save
      UserMailer.email_layout(@email).deliver    
    end
  end

  def email_init(template)
    email = Email.new
    email.content = template.content
    email.subject = template.name
    email.to_addresses = user.email
    email
  end
end
