class ComputersController < ApplicationController
    
    def index
        if params[:user_id]
            @computers = Computer.find(params[:user_id]).computers
          else
            @computers = Computer.all
          end
    end

    def show
        @computer = Computer.find_by(id: params[:id])
    end

    def new
        @computer = Computer.new
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

    def computer_params
        params.require(:computer).permit(:operating_system, :cpu, :ram, :gpu, :motherboard_type, :cooling_type, :case_size)
    end
end
