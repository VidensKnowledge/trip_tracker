class LocationsController < ApplicationController
  before_action :set_action, only: [:show, :update, :edit, :destroy]
  def index
   @locations = Location.all
  end

  def show

  end

  def edit
  end

  def new
   @location =Location.new
  end
  def create 
    @location = Location.new(location_params)

    if @location.save
      redirect_to locations_path
    else 
      render :new
    end
  end 
  def update
    if @location.update(location_params)
      redirect_to locations_path
    else 
      render :edit
    end 
  end
  def destroy 
    @location.destroy 
    redirect_to locations_path
  end 
  private 
     def set_location
      @location = location.find(params[:id])
    end 

    def location_params
      perams.require(:location).permit(:loc_name)
    end
end
