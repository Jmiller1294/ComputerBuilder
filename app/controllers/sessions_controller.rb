class SessionsController < ApplicationController
  
  
  def welcome
  end
  
  
  def new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      # Sign the user in and redirect to the user's show page.
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:message] = 'Invalid username/password combination' # Not quite right!
      redirect_to login_path
    end
  end


  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def omniauth
    @user = User.find_or_create_by(email: auth["info"]["email"]) do |user|
      user.username = auth["info"]["name"]
      user.password = SecureRandom.hex(10)
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end


end
