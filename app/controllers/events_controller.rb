class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = policy_scope(Event).order(created_at: :asc)
    @events = Event.all
  end

  def new
  end

  def create
  end
end
