class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :redirect_if_not_logged_in, :find_order

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def redirect_if_not_logged_in
        redirect_to root_path if !logged_in?
    end

    def find_order
        @order = Order.find_by(id: params[:id])
    end

    
end
