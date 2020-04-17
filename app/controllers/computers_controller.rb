class ComputersController < ApplicationController
   before_action :redirect_if_not_logged_in

    def index
      if params[:order_id]
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
        @computer = Computer.new
    end

    def create
        @computer = current_user.computers.build(computer_params)
        if @computer.save 
            redirect_to computers_path
        else
            render 'new'
        end
    end

    def edit
        @computer = Computer.find_by(id: params[:id])
    end

    def update
    end

    def destroy
    end

    private

    def computer_params
        params.require(:computer).permit(:operating_system, :cpu, :ram, :gpu, :motherboard_type, :cooling_type, :case_size)
    end
end
