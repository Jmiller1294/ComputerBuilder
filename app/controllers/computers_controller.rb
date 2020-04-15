class ComputersController < ApplicationController
    
    def index
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            if @user.nil?
              redirect_to '/'
            else
              @computers = @user.computers
            end
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
