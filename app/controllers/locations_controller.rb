class LocationsController < ApplicationController
  before_action :set_location, only: [:destroy]
  def index
    @locations = Location.all
  end

  def show
  end

  def edit
  end

  def new
  end
  private 
  
end
