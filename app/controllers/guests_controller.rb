class GuestsController < ApplicationController
  before_action :find_guest, only: [:show, :edit, :update, :destroy]
  
  def index
    @guests = Guest.all
  end

  def new

  end

  def create

  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit

  end

  def update
  end

  def destroy

  end

  private

  def guest_params
    params.require(:guest).permint(:name, :occupation)
  end

  def find_guest
    @guest = Guest.find(params[:id])
  end
end
