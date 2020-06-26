class HomeController < ApplicationController
  def index
    if cookies[:celebrate].present?
      render 'celebrate'
    else
      render 'index'
    end
  end

  def celebrate
    cookies[:celebrate] = {
     value: true,
     expires: 1.year.from_now
    }
  end
end
