class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to session_new_url, notice: 'Please log in'
      end
    end
end
