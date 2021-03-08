class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = current_user
    @created_events = current_user.created_events
    @created_events_upcoming = current_user.created_events.future.order('created_at DESC')
    @created_events_past = current_user.created_events.past.order('created_at DESC')
    @attended_events_upcoming = current_user.attended_events.future.order('created_at DESC')
    @attended_events_past = current_user.attended_events.past.order('created_at DESC')
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
