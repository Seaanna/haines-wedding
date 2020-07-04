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
    redirect_to "https://stream.meet.google.com/stream/53a80f9c-4755-4fe1-aa72-fe000b78202e"
  end
end
