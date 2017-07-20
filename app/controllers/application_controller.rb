class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    def current_user
    	@current_user ||= Portfolio.find_by(id: session[:id]) if session[:id]
  	end
  	helper_method :current_user

end
