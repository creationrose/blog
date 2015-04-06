class ApplicationController < ActionController::Base
 	include Pundit
  	protect_from_forgery with: :exception

  	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def require_user(object)
    (user_not_authorized unless current_user == object.user) if logged_in?
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
