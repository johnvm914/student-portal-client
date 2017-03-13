class SessionsController < ApplicationController

  def new
    render "new.html.erb"
  end

  def create
    user = Unirest.post("http://localhost:3000/api/v1/login",
                        parameters: {email: params[:email], password: params[:password]}
                      ).body
    if user
      session[:user_id] = user["id"]
      redirect_to "/students/#{user['id']}"
    else
      redirect to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end

end
