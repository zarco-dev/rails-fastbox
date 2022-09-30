class VehiclesController < ApplicationController
  def index
    @vehicles = policy_scope(Vehicle)
  end

  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    auhotize @vehicle
  end

  def show
    authorize @vehicle
  end

  def edit
    authorize @vehicle
  end

  def update
    authorize @vehicle
  end

  def destroy
    authorize @vehicle
  end
end
