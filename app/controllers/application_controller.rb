class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
    private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
  rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_path, alert: "You can't access this page"
    end


end
