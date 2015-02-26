class LocationsController < ApplicationController

  def index
    @locations = Location.order(:name)
  end

  def new
    @location = Location.new
  end

  def create
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end
end
