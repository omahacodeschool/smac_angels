class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:request_id]
      session[:request_id] = params[:request_id]
      if params[:anonymous]
        session[:anonymous] = params[:anonymous]
      end
    end
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
