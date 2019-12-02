class ReviewsController < ApplicationController

  def new
    set_event
    @review = Review.new
    authorize @review
  end

  def create

  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end

