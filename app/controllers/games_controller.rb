class GamesController < ApplicationController
  before_action :require_admin, only: [:new, :new_game]

  def new

  end

  def new_game
    @teams = Team.all
    respond_to do |format|
      if request.xhr?
        format.html { render :new_game, layout: false}
      else
        format.html { render :new_game }
      end
    end
  end

end
