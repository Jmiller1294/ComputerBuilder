class SessionsController < ApplicationController
  def welcome
  end
  
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      # Sign the user in and redirect to the user's show page.
      session[:user_id] = params[:user_id]
      redirect_to user_path(@user)
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
    

  def destroy
    session.delete(:user_id)
    redirect_to "/"
  end
end
