class OrdersController < ApplicationController
  before_action :redirect_if_not_logged_in
    
    def index
        if params[:user_id] && @user = User.find_by(id: params[:user_id])
            if current_user == @user
                @orders = current_user.orders
            elsif @orders.nil?
                redirect_to root_path
            else
                redirect_to root_path
            end
        else
            redirect_to root_path
        end
    end

    def show
        find_order
        redirect_if_not_user_order
    end

    def new
        @order = Order.new
    end

    def create
        @order = current_user.orders.build(order_params)
        if @order.save 
            redirect_to order_path(@order)
        else
            render 'new'
        end
    end

    def edit
        find_order
        redirect_if_not_user_order
    end

    def update
        find_order
        if @order.update(order_params)
            redirect_to order_path(@order)
        else
            render "edit"
        end
    end

    def destroy
        find_order
        @order.destroy
        redirect_to orders_path
    end

    private

    def redirect_if_not_user_order
        if !@order || @order.user != current_user
            redirect_to user_path(current_user) 
            flash[:message] = 'Order Not Found' 
        end
    end

    def order_params
        params.require(:order).permit(:shipping_type, :shipping_address, :card_type, :card_number)
    end
end
