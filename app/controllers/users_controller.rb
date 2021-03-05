class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User #{@user.username} was created"
      redirect_to root_path
    else
      flash.now[:alert] = 'User was not created'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
