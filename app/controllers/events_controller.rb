class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to timeline_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :description)
  end
end
