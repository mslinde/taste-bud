class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.geocoded

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
        # image_url: helpers.asset_url('/assets/images/random.png')
      }
    end

    @events = policy_scope(Event).order(created_at: :asc)
    @events = Event.all

  end

  def show
    set_event
    @event_user = @event.user
    @spot = Spot.find_by_id(params[:id])
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
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
