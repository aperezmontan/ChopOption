class PoolsController < ApplicationController
  before_action :get_pool, only: [:show]
  before_action :require_login

  def index

  end

  def show
    respond_to do |format|
      if request.xhr?
        format.html { render :show, layout: false}
      else
        format.html { render :show }
      end
    end
  end

  private

  def get_pool
    @pool = Pool.find_by(id: params[:pool_id])
  end

end
