class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tracking ]

  def home
    @services = policy_scope(Service)
  end

  def tracking
  end

  def wallet
  end

  def wallet_edit
    query = params[:amount].to_i
    current_user.balance += query
    current_user.save
  end

end
