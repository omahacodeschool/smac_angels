class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:email], params[:password], params[:remember_me])

    if session[:request_id]

      @request = Request.find(session[:request_id])

      @request.add_angel(session[:user_id], session[:anonymous])

      session[:request_id] = nil    
      session[:anonymous] = nil  

      redirect_to (request_path(@request.id))

    elsif user
      redirect_back_or_to root_url, :notice => "Logged in!"
      session[:user_id] = user.id
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
