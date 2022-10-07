class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show update destroy]
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
    authorize @vehicle
    if @vehicle.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
    authorize @vehicle
  end

  def vehicle_params
    params.require(:vehicle).permit(:plate_number, :vehicle_type, :vehicle_branding, :model)
  end
end
