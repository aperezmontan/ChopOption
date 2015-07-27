class GamesController < ApplicationController
  before_action :require_admin, only: [:new]

  def new
    @teams = Team.all
  end

end
