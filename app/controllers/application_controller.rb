class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type, :username, :birth_date, :first_name, :last_name, :license_type])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_type, :username, :birth_date, :first_name, :last_name, :license_type, :gender, :document_number, :document_type, :bonus_code])
  end
end
