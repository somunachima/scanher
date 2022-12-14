class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :home, :about]

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:title, :full_name, :address, :phone_number, :birthday, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:title, :full_name, :address, :phone_number, :birthday, :photo])
  end
end
