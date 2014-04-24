class EmailsController < ApplicationController
  # Show all emails
  def index
    # @emails = Email.joins(:event).select("emails.*, http://events.name as ename").order('created_at DESC')
  end

  # Show contents of specific email
  def show
    @email = Email.find(params[:id])
  end

  # Create new email
  def new
    @email = Email.new
  end

  # Send email
  def create
    case params["button"].to_i
    when 1
      @template = Template.find_by_name("Signup Confirmation")
    when 2
      @template = Template.find_by_name("Requestor Signup")
    when 3
      @template = Template.find_by_name("Angel Signup")
    when 4
      @template = Template.find_by_name("Shipping Notification for Angel")
    when 5
      @template = Template.find_by_name("Shipping Notification for Requestor")
    when 6
      @template = Template.find_by_name("Feedback Notification for Angel")
    when 7
      @template = Template.find_by_name("Feedback Notification for Requestor")
    end      

    @email = Email.new
    @email.content = @template.content
    @email.subject = @template.name
    @email.request_id = params["request_id"]
    @email.to_addresses = params["email"]["email_address"]

    if @email.save
      UserMailer.email_layout(@email).deliver
    
      flash[:notice] = 'Email was successfully created.'
      redirect_to root_path
    else
      flash[:notice] = "Please fix errors."
      render "new"
    end

  end
  
end