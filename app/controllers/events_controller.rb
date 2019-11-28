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
    @events = Vibe.find(params[:vibe_id]).events
    @vibes = Vibe.all
    @current_vibe = Vibe.find(params[:vibe_id]).name
    authorize @events
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
   def set_event
    @event = Event.find(params[:id])
  end
end
