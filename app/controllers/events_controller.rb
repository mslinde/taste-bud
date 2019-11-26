class EventsController < ApplicationController
  def index
    @events = Event.geocoded

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def new
  end

  def create
  end
end
