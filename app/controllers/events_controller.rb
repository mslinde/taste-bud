class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = policy_scope(Event).order(created_at: :asc)
    @events = Event.all
  end

  def show
    set_event
    authorize @event
    @event = @event.user
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

   def set_event
    @event = Event.find(params[:id])
  end
end

#comment
