class ApplicationController < ActionController::Base
    helper_method :current_user, :ensure_login, :logged_in?

    private

    def current_user 
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def ensure_login 
        redirect_to

end
