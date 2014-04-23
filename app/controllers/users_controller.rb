class UsersController < ApplicationController
  before_filter :setup_negative_captcha, :only => [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(@captcha.values)
    
    if @user.save && @captcha.valid?
      redirect_to root_url, :notice => "Signed up!"
    else
      flash[:notice] = @captcha.error if @captcha.error
      render :new
    end
  end
  
  def index
    @users = User.all
  end
  private
  
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

