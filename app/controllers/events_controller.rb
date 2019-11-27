class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
    @vibes = Vibe.all
    @events = policy_scope(Event).order(created_at: :asc)
    # set filters defined in private
    # With results can create map and markers
    # use the filters to return the results
    # Look into the advanced record cheat sheet.
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :start_time, :description, :capacity, :vibe_id)
  end
end
