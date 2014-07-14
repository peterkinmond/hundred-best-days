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

  def destroy
    Event.find(params[:id]).destroy
    redirect_to timeline_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :description, :date, :user_id)
  end
end
