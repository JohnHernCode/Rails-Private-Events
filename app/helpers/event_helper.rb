module EventHelper
  def event_button
    if logged_in? # needs && not creator && not past event
      button_to 'Attend', action: :attend
    end
  end

  def show_events_loop
    html_values = ""
    @event.attendees.each do |person|
      text = person.username
      html_values << (content_tag :li, text)
    end
    html_values.html_safe
  end
end
