class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception| 
    redirect_to "/users/sign_in/", :notice => exception.message
  end
  rescue_from Exception do |exception|
  	redirect_to "/rooms", :notice => exception.message
  end
end
