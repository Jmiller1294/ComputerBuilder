class OrdersController < ApplicationController
  before_action :redirect_if_not_logged_in
    
    def index
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            if @user.nil?
              redirect_to user_path(@user)
            else
              @orders = @user.orders
            end
          else
            @orders = Order.all
          end
        
    end

    def show
        @order = Order.find_by(id: params[:id])
    end

    def new
        @order = Order.new
    end

    def create
      @order = current_user.orders.build(order_params)
      if @order.save
        redirect_to user_path(current_user)
      else
        render "new"
      end
    end

    def edit
        @order = Order.find_by(id: params[:id])
    end

    def update
    end

    def destroy
    end

    private

    def order_params
        params.require(:order).permit(:order_date, :shipping_type, :shipping_address)
    end
end
