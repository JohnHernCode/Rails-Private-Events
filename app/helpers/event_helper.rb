module EventHelper
  def event_button(event, user)
    return unless logged_in?
    return if event[:creator_id] == user[:id]
    return if event[:date] < Time.zone.now

    button_to 'Attend', action: :attend
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
