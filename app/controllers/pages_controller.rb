class PagesController < ApplicationController
  def home
    @events = Event.all
    @days = Day.all
    if params[:date]
      @date = params[:date]
    else
      @date = Time.now.strftime("%Y-%m-%d")
    end
    
  end
  def calendar
  end
end
