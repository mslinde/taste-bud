class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = policy_scope(Event).order(created_at: :asc)
    @events = Event.all
    @vibes = Vibe.all
    # might need for vibe filter
    # @search = Vibe.find(vibe_params).events
    authorize @events
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to root_path
    else
      render :new
    end
    authorize @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :start_time, :description, :capacity, :vibe_id)
  end
  # might need for vibe filter
  # def vibe_params
  #   params.require(:event).permit(:vibe_id)
  # end
end

#comment
