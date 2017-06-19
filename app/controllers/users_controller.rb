class UsersController < ApplicationController
  before_action :authenticated, except: [:new, :create]
  before_action :find_user, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to home_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy
    session[:user_id]= nil
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
