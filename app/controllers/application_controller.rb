class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permitidos al registrarse
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [:first_name, :last_name]
    )

    # Permitidos al editar la cuenta
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:first_name, :last_name]
    )
  end
end