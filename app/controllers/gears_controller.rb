class GearsController < ApplicationController
    def index
        @gears = Gear.all
    end
    
    def new
        @gears = Gear.new
    end
    
    def create
        Gear.create(gear_params)
        redirect_to root_path
    end
    
    private
    
    def gear_params
        params.require(:gear).permit(:name, :description, :owner)
    end
end
