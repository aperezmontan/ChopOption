class PlayersController < ApplicationController
  before_action :require_login, only: [:show]

  def show
    @player = Player.where(id: current_user.id)
    respond_to do |format|
      if request.xhr?
        format.html { render :show, layout: false}
      else
        format.html { render :show }
      end
    end
  end

  def new
    @player = Player.new
    respond_to do |format|
      if request.xhr?
        format.html { render :new, layout: false}
      else
        format.html { render :new }
      end
    end
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:user_id] = @player.id
      redirect_to root_path
    else
      flash[:error] = @player.errors.full_messages.first
      render :new
    end
  end

  private

  def player_params
    params.require(:player).permit(:name,:email,:password,:password_confirmation)
  end

end
