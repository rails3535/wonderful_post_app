class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: [:show]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user
  private
     #↓以下追記
  def configure_permitted_parameters
    added_attrs = [ :name,
                    :email,
                    :password,
                    :password_confirmation,
                  ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
end
