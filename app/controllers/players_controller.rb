class PlayersController < ApplicationController

  def show
    @player = Player.where(id: current_user.id)
  end

end
