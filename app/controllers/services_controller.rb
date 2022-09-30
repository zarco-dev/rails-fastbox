class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    if @service.save
      redirect_to @service
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:pickup_address, :deliver_address, :payment_method)
  end
end
