class UserController < ApplicationController
  def new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    session[:user_id] = @user.id
    if @user.save
      redirect_to root_path
    else
    end
  end
end
