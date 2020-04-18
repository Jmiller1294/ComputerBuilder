class OrdersController < ApplicationController
  before_action :redirect_if_not_logged_in
    
    def index
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @orders = @user.orders
        if @orders.nil?
            redirect_to root_path
        else
            @orders = @user.orders
        end
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
            redirect_to user_path(@order.user)
        else
            render 'new'
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
        params.require(:order).permit(:shipping_type, :shipping_address, :card_type, :card_number)
    end
end
