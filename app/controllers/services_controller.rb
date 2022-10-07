class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    current_user.balance -= @service.pricing
    current_user.save
    if @service.save
      redirect_to @service
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
    @vehicle = policy_scope(Vehicle)
    authorize @service
  end

  def update
    @service = Service.find(params[:id])
    authorize @service
    @service.update(driverside_service_params)
    @service.save
    redirect_to edit_service_path(@service)
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to root_path
    authorize @service
  end

  private

  def service_params
    params.require(:service).permit(:pickup_address, :deliver_address, :payment_method, :pricing)
  end

  def driverside_service_params
    params.require(:service).permit(:pickup_address, :deliver_address, :payment_method, :status, :vehicle_id)
  end
end
