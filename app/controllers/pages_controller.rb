class PagesController < ApplicationController
  def home
    @events = Event.all
    @days = Day.all
  end
end
