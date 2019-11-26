class EventsController < ApplicationController
  def index
    @events = Event.all
    @vibes = Vibe.all
  end

  def new
  end

  def create
  end
end
