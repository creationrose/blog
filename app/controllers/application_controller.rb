class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery with: :exception
=======
 	include Pundit
  	protect_from_forgery with: :exception

  	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
>>>>>>> 251ce9a
end
