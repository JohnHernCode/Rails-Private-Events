module HomeHelper

  def future_event_home
    # html_values = ''
    # Event.future.each do |event|
    #   text = event.description
    #   date = event.date.to_s
    #   html_values << (content_tag :li, text) + (date)
    # end
    # html_values.html_safe

    Event.future.each do |event|
      link_to event.description, event
        event.date
      end
  end

  def past_event_home
    Event.past.each do |event|
      link_to event.description, event
      event.date
    end   
  end
end
