class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tracking ]

  def home
    @services = policy_scope(Service)
  end

  def tracking

  end
end
