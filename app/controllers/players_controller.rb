class PlayersController < ApplicationController

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

end
