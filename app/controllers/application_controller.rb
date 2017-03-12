class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Unirest.get("http://localhost:3000/resume_api",
                        parameters: {id: session[:user_id]}
                      ).body
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to "/login" unless current_user
  end

end
