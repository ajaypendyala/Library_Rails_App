class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
   redirect_to "/users/sign_in/", :notice => exception.message
  end
  #rescue_from Exception do |exception|
  #	redirect_to "/rooms", :notice => exception.message
  #end
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password])
  end
end
