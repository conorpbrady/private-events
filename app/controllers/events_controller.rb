class EventsController < ApplicationController
  def show
    @event = Event.find_by(id: params[:id])
  end

  def create
    event = current_user.events.build(event_params)
    if event.save
      redirect_to current_user
    else
      render 'new'
    end
  end

  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:events).permit(:description)
  end
end
