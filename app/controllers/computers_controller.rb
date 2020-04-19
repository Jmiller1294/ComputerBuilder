class ComputersController < ApplicationController
   before_action :redirect_if_not_logged_in

    def index
      if params[:order_id] && find_order
            @computers = @order.computers
        elsif @computers.nil?
            redirect_to root_path
        else
            redirect_to root_path
        end
    end

    def show
        @computer = Computer.find_by(id: params[:id])
        redirect_if_not_user_computer
    end

    def new
        if params[:order_id] && find_order
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
        redirect_if_not_user_computer
    end

    def update
        find_order
        if @order.update(order_params)
            redirect_to order_path(@order)
        else
            render "edit"
        end
    end


    private

    def redirect_if_not_user_computer
        if !@computer || @computer.user != current_user 
            flash[:message] = 'Computer Not Found' 
            redirect_to user_path(current_user)
        end
    end

    def computer_params
        params.require(:computer).permit(:operating_system, :cpu, :ram, :gpu, :motherboard_type, :cooling_type, :case_size, :order_id)
    end
end
