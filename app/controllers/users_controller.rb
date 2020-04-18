class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def show
        if !redirect_if_not_logged_in
        @user = User.find_by_id(params[:id])
        @last_order = @user.orders.last_order
        redirect_to root_path if @user != current_user
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) 
        if @user.save 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end 

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
