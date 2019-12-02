class ReviewsController < ApplicationController

  def new
    set_event
    @review = Review.new
  end

  def create
    raise
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end

