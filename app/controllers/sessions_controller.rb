class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:user][:username])
    if !user.nil? && user.authenticate(params[:user][:password])
      redirect_to home_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end

end
