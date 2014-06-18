class TimelinesController < ApplicationController
  def show
    @events = current_user.events.sort_by(&:date)
  end
end
