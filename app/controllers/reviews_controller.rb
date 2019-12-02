class ReviewsController < ApplicationController

  def new
    set_event
    @review = Review.new
    authorize @review
  end

  def create
    set_event
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.event_id = @event.id
    if @review.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
    authorize @event
  end

  def blank_stars
    5 - rating.to_i
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def review_params
    params.require(:review).permit(:venue, :vibe, :neighborhood, :comment)
  end
end

