class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# requerido para los custom field en devise
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :nombre1, :nombre2, :apellido1, :apellido2, :telefono2, :rol_id) }
  end
# hasta aca

 def after_sign_in_path_for(resource_or_scope)
 	"/clientes"
 end
end
