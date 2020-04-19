class Admin::StatsController < ApplicationController
    def index
        @orders = Order.all
    end
end