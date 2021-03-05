class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
       session[:user_id] = @user.id
       redirect_to root_path
 end

  def login
  end
end
