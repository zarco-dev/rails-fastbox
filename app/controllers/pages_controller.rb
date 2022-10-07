class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tracking, :profile] #borrar luego profile

  def home
    @services = policy_scope(Service)
  end

  def tracking
      @services = Service.all
      @service = Service.where("id = ?", params[:rastreo])
  end

  # profile creado provisionalmente luego adherir al dashboard con lo realizado Juanse y profile en routes tambien

  def profile
  end

  def wallet
  end

  def wallet_edit
    query = params[:amount].to_i
    current_user.balance += query
    current_user.save
  end

end
