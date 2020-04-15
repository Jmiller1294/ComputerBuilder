class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show
        @order = Order.find_by(id: params[:id])
    end

    def new
        @order = Order.new
    end

    def create
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
