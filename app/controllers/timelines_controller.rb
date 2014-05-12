class TimelinesController < ApplicationController
  def show
    @events = Event.all.sort_by(&:date)
  end
end
