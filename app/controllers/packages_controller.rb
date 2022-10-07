class PackagesController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @package = Package.new
    authorize @package
    authorize @service
  end

  def create
    @service = Service.find(params[:service_id])
    @package = Package.new(package_params)
    authorize @service
    authorize @package
    @service.package_id = @package.id
    @package.save
    @service.save
    if @package.save
      redirect_to root_path
    else
      raise
    end
  end

  private

  def package_params
    params.require(:package).permit(:name, :weight, :width, :height, :package_type)
  end
end
