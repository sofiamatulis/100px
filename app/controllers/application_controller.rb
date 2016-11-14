class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

#how we know if the user is logged in or out! defining a current user 

end
