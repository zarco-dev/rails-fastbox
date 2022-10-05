class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tracking, :profile] #borrar luego profile

  def home
    @services = policy_scope(Service)
  end

  def tracking
  end

  # profile creado provisionalmente luego adherir al dashboard con lo realizado Juanse y profile en routes tambien

  def profile
  end
end
