class UsersController < ApplicationController
  before_filter :setup_negative_captcha, :only => [:new, :create]
  
  # Creates User object for initial sign up form.
  
  def show
    @user = User.find(params[:id])
    @requests = Request.order(:created_at).where("requestor_id = ?", @user.id)
    @angels = Request.order(:created_at).where("angel_id = ?", @user.id)
  end

  def new
    @user = User.new
  end

  # Saves user from parameters on the sign up form from the @captcha params, using negative captcha
  def create
    @user = User.new(@captcha.values)
    
    if @user.save && @captcha.valid?
      redirect_to root_url, :notice => "Signed up!"
    else
      flash[:notice] = @captcha.error if @captcha.error
      render :new
    end
  end
  
  #Select all users for index view 
  def index
    @users = User.all
  end
  
  private
  # Returns parameters from form fields after decoding MD5 hash field names. 
  ## https://github.com/subwindow/negative-captcha
  # Add to spec helper for tests - NegativeCaptcha.test_mode = true
    def setup_negative_captcha
      @captcha = NegativeCaptcha.new(
        # A secret key entered in environment.rb. 'rake secret' will give you a good one.
        secret: ENV['NEGATIVE_CAPTCHA_SECRET'],
        spinner: request.remote_ip, 
        # Whatever fields are in your form
        fields: [:fname, :lname, :email, :password, :password_confirmation],  
        params: params
      )
    end
end

