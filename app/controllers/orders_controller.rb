class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
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
