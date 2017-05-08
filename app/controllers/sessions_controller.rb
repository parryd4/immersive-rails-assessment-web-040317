class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
