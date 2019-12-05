class ReviewsController < ApplicationController

  def new
    set_spot
    @event = @spot.event
    @review = Review.new
    authorize @review
      @markers = [{ lat: @event.latitude, lng: @event.longitude }]
  end

  def create
    set_spot
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.spot = @spot
    if @review.save!
      redirect_to user_path(current_user), notice: "Thanks for leaving a review of #{@spot.event.title}!"
    else
      render :new
    end

    skip_authorization
  end

  def blank_stars
    5 - rating.to_i
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def review_params
    params.require(:review).permit(:venue, :vibe, :neighborhood, :comment)
  end

end

