class ApplicationController < ActionController::Base

    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :define_error_message

    helper_method :current_user, :logged_in?
 
    def current_user
      User.find(session[:user_id])
    end
    
    def logged_in?
        current_user != nil
    end

    def define_error_message
        @error_message = flash[:error_message]
    end

end
