class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_username(params[:username])

    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      # flash.now[:alert] = 'Username is invalid'
      redirect_to login_url, alert: 'Username is invalid'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
