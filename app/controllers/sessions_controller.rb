class SessionsController < ApplicationController
  def welcome
  end
  
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    session[:user_id] = params[:user_id]
    redirect_to user_path(@user)
  end

  def destroy
    session.delete :username
    redirect_to "/"
  end
end
