class SessionsController < ApplicationController

  def home

  end

  def create
    user = User.find_by(email: params[:email])
    if (user && user.authenticate(params[:password]))
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Either username or password are incorrect."
      redirect_to login_path
    end
  end

end
