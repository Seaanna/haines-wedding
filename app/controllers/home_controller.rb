class HomeController < ApplicationController
  def index
    if cookies[:celebrate].present?
      render 'celebrate'
    else
      render 'index'
    end
  end

  def celebrate
    cookies[:celebrate] = { value: true, expires: 1.year.from_now }
  end

  def meeting
    cookies.delete :celebrate

    render 'index'
  end

  def live_stream
    redirect_to "https://www.twitch.tv/drewhaines3"
  end
end
