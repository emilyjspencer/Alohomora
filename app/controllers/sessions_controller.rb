class SessionsController < ApplicationController

  def new
  end 

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have been successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = "Unable to log in. Please check your username and/or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully been logged out"
    redirect_to login_path
  end

end

