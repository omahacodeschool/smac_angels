class EmailsController < ApplicationController
  # before_filter :only => [:index, :show] { |c| c.authorize 'pastor' }
  # before_filter :only => [:new, :create] { |c| c.authorize 'coordinator' }
  
  # list past emails in DESC order
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
    @template = Template.find(params["button"].to_i)

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