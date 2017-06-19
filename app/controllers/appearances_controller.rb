class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(rating: params[:rating], guest_id:params[:guest_id], episode_id:params[:episode_id])
    if @appearance.save
      redirect_to appearance_path(appearance)
    else
      render 'new'
    end
  end

end
