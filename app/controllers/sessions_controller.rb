class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.nil? 
      flash[:alert] = 'Username not valid!'
      redirect_to '/login'
    else
      session[:user_id] = @user.id
      redirect_to root_path
    end

 end

  def login
  end

  def delete
    reset_session
    redirect_to root_path
  end

end
