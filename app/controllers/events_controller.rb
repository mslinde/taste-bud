class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :update, :edit]

  def index
    @events = policy_scope(Event).order(created_at: :asc).geocoded
    @vibes = Vibe.all

    @location = params[:search]
    # @events = Vibe.find(params[:vibe_id]).events.near(params[:search]) if params[:vibe_id]
    # @current_vibe = Vibe.find(params[:vibe_id]).name if params[:vibe_id]
    #events = Vibe.find(params[:vibe_id]).events.near(params[:search])
    @current_vibe = Vibe.find_by(name: params[:vibe_id])
    @vibes_array = Vibe.all.map { |vibe| [vibe.name, vibe.id] }
    @vibes_array.unshift(["Select Vibe", 0])
    @events = Event.where(vibe_id: params[:vibe_id]).near(params[:search])

    if @events.present?
        @events
    else
        @events = Event.geocoded
        @response = "TasteBudd Events Around the World"
    end

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
  end

  def show
    set_event
    if current_user
      @spot_occupied = @event.spots.select {|spot| spot.user_id == current_user.id}.first
      @event_user = @event.user
      @comment = Comment.new
      @comments = @event.comments.order(created_at: :desc)
    else
      @event_user = @event.user
    end
      authorize @event
      @markers = [{ lat: @event.latitude, lng: @event.longitude }]
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
    authorize @event
  end

  def update
    set_event
    redirect_to event_path(@event)
    authorize @event
  end

   def edit
    set_event
    authorize @event
  end

  def join
    set_event
    Spot.create(event: @event, user: current_user)
    redirect_to event_path(@event), notice: "You're going to this event!"
    authorize @event
  end

   def destroy
    set_event
    @event.destroy
    redirect_to user_path, notice: "Event was successfully removed"
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
