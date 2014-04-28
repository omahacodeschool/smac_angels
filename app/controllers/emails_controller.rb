class EmailsController < ApplicationController
  before_filter :require_login
  before_filter :only_admin, :only => [:index,:show]
  
  # Show all emails
  def index
    @emails = Email.all
    # @emails = Email.joins(:event).select("emails.*, http://events.name as ename").order('created_at DESC')
  end

  # Show contents of specific email
  def show
    @email = Email.find(params[:id])
  end

  # Create new email
  def new
    if params[:request_id] && params[:to_id]
      @email = Email.new
    else
      redirect_to emails_path
    end
  end

  # Send email
  def create    
    @email = Email.new(params[:email])
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