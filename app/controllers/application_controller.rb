class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end


  before_filter :authenticate

  def authenticate
    #authenticate_or_request_with_http_basic do |username, pass|
      #username == "patito" && pass == "ivan"
    #end
    if session[:user_id].blank?
      redirect_to external_login_path
    end
  end
end
