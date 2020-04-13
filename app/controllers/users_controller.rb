class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def show
        @user = User.find_by(params[:id])
    end

    def new
        @user = User.new
    end

    def create
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
