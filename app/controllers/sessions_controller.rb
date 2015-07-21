class SessionsController < ApplicationController

  def new

  end

  def create
    player = Player.where("name = ? OR email = ?", params[:login], params[:login]).first
    if (player && player.authenticate(params[:password]))
      session[:user_id] = player.id
      redirect_to root_path
    else
      flash[:error] = "Either username or password are incorrect."
      redirect_to signin_path
    end
  end

end
