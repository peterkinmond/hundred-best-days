class TimelinesController < ApplicationController
  def show
    @events = Event.all.sort_by(&:date)
    @years = Event.range_of_years(@events)
  end
end
