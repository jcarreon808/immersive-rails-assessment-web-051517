class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # helper_method :logged_in?, :current_user
  def current_user
    @current_user ||= User.find_by(id:session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticated
    if !logged_in?
      redirect_to root_path
    end
  end
end
