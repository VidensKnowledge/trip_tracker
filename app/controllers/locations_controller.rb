class LocationsController < ApplicationController
  before_action :set_action, only: [:show, :update, :adit, :destroy]
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
      redirect_to #finish where direct to 
    else 
      render :new
    end
  end 
  def update
    if @location.update(location_params)
      redirect_to #where to?
    else 
      render :edit
    end 
  end
  def destroy 
    @location.destroy 
    redirect_to #where do we go?
  end 
  private 
     def set_location
      @location = location.find(params[:id])
    end 

    def location_params
      perams.require(:location).permit(:loc_name)
    end
end
