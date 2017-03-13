class SessionsController < ApplicationController

  def new
    render "new.html.erb"
  end

  def create
    user = Unirest.get("http://localhost:3000/resume_api",
                        parameters: {email: params[:email], password: params[:password]}
                      ).body
    if user
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end

end
