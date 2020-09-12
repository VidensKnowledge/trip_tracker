class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :edit, :destroy]
  before_action :set_trip
  
  def index
   @locations = Location.all
  end

  def show

  end

  def edit
  end

  def new
   @location = @trip.locations.new
   render partial: 'form'
  end
  def create 
    @location = @trip.locations.new(location_params)

    if @location.save
      redirect_to trip_locations_path(@trip)
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

     def set_trip
    @trip = Trip.find(params[:trip_id])
    end

     def set_location
      @location = Location.find(params[:id])
    end 

    def location_params
      params.require(:location).permit(:loc_name)
    end
end
