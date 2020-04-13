class ComputersController < ApplicationController
    layout"computers"
    
    def index
        @computer = Computer.all
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

    def computer_params
        params.require(:computer).permit(:operating_system, :cpu, :ram, :gpu, :motherboard_type, :cooling_type, :case_size)
    end
end
