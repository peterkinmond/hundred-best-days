class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to timeline_path
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :description)
  end
end
