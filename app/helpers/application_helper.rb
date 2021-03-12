module ApplicationHelper
  def event_home(events)
    html_code = ''
    events.each do |event|
      html_code << "<li><a href='events/#{event[:id]}'>#{event[:description]}</a>; #{event[:date]}</li>"
    end
    html_code.html_safe
  end
end
