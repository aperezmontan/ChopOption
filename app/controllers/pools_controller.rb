class PoolsController < ApplicationController
  before_action :require_login

  def index

  end

  def show
    @pool = Pool.new
    respond_to do |format|
      if request.xhr?
        format.html { render :show, layout: false}
      else
        format.html { render :show }
      end
    end
  end

end
