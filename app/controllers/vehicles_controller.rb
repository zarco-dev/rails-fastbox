class VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    auhotize @vehicle

  def edit
    authorize @vehicle
  end

  def update
    authorize @vehicle
  end

  def def destroy
    authorize @vehicle
  end
end
