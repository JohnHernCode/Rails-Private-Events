class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @users = User.all
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
      if @event.save
        redirect_to show_path
      else
        flash.now[:alert] = 'Event was not built'
      end
  end

  def attend
    current_user.attended_events << Event.find(params[:id])
    if current_user.save
      flash[:notice] = "You are now attending the event"
    else
      flash[:alert] = "Event didn't save"
    end

  end

  private

  def event_params
    params.permit(:description, :date)
  end

end
