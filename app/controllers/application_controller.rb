class ApplicationController < ActionController::Base
    
    #we are writing this because we want our function to be not available for the controlllers but for the helpers as well
    helper_method :current_user, :logged_in?

    def current_user
        #here we are using ||= because if a value is already asigned to the current_user then we dont want to perform User.find(session[:user_id]) again
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        #here we are using !! to convert current_user to a boolean
        !!current_user
    end

    def require_user
        if !logged_in?
          flash[:alert] = "You must be logged in to perform that action"
          redirect_to login_path
        end
    end

end
