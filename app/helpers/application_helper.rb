module ApplicationHelper
  def event_home(events)
    html_code = ''
    events.each do |event|
      html_code << "<li><a href='events/#{event[:id]}'>#{event[:description]}</a>; #{event[:date]}</li>"
    end
    html_code.html_safe
  end

  def flasher(flash)
    if flash.now[:alert]
      "<div class='notification is-danger global-notification'>
        <p class='alert'>#{alert}</p>
      </div>".html_safe
    elsif flash.now[:notice]
      "<div class='notification is-info global-notification'>
        <p class='notice'> #{notice} </p>
      </div>".html_safe
    else
      return
    end
  end

  def nav_buttons(user)
    html_code = ''
    if logged_in?
      html_code << ("<span style='padding-right: 10px;'>Hi! ' #{user.username.upcase} '</span>")
      html_code << (button_to "Logout", '/login', method: "delete")
      html_code << (button_to "Create", '/event', method: :get)
      html_code << (button_to "My Events", '/show', method: :get)
    else
      html_code << (button_to "Login", '/login', method: :get)
      html_code << (button_to "Sign Up", new_user_path, method: :get)
    end
    html_code.html_safe
  end
end
