module UserHelper
  def created_event_user
    @user.created_events.each do |event|
      link_to event.description, event
      event.date
    end   
  end

  def atttending_future_user
    @attended_events_upcoming.each do |event|
      link_to event.description, event
      event.date
    end   
  end

  def attending_past_user
    @attended_events_past.each do |event|
      link_to event.description, event
      event.date
    end  
  end
end
