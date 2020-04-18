class ComputersController < ApplicationController
   before_action :redirect_if_not_logged_in

    def index
      if params[:order_id] && current_user
            @order = Order.find_by(id: params[:order_id])
            @computers = @order.computers
        if @computers.nil?
            redirect_to root_path
        else
            @computers = @order.computers
        end
      end
    end

    def show
        
        @computer = Computer.find_by(id: params[:id])
    end

    def new
        if params[:order_id] && @order = Order.find_by_id(params[:order_id])
            @computer = @order.computers.build
        else
            @computer = Computer.new
        end
    end

    def create
        @computer = current_user.computers.build(computer_params)
        if @computer.save 
            redirect_to computer_path(@computer)
        else
            render 'new'
        end
    end

    def edit
        @computer = Computer.find_by(id: params[:id])
        redirect_to user_path(current_user) if !@computer || @computer.user != current_user 
    end

    def update
    end

    def destroy
    end

    private

    def computer_params
        params.require(:computer).permit(:operating_system, :cpu, :ram, :gpu, :motherboard_type, :cooling_type, :case_size, :order_id)
    end
end
