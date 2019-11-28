class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = policy_scope(Event).order(created_at: :asc)
    @vibes = Vibe.all

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
        # image_url: helpers.asset_url('/assets/images/random.png')
      }
    end

    @location = params[:search]
    @events = Vibe.find(params[:vibe_id]).events.near(params[:search])
    @current_vibe = Vibe.find(params[:vibe_id]).name
    if !@events.present?
      @events = Event.geocoded
    end
    # if params[:search].present? && params[:vibe_id].present?
    #   @location = params[:search]
    #   @events = Vibe.find(params[:vibe_id]).events.near(params[:search])
    #   @current_vibe = Vibe.find(params[:vibe_id]).name
    # elsif params[:search] == []
    #   @events
    #   @vibes
    # end

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

  def join
    set_event
    Spot.create(event:@event, user: current_user)
    flash[:notice] = "You are not authorized to perform this action."
    redirect_to event_path(@event)
    authorize @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :start_time, :description, :capacity, :vibe_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
