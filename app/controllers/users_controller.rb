class UsersController < ApplicationController
  def show
    @events = Event.where(user_id: current_user)
    @spot = Spot.find_by_id(params[:id])
    @review_events = Event.where('start_time < ?', Date.today )

    authorize @events
    @spots_to_review = current_user.spots

    @past_spots = current_user.spots.select do |spot|
      p spot.event.start_time < Date.today
    end

    @unreviewed_spots = []

    @past_spots.select do |spot|
      if spot.review == nil
        @unreviewed_spots << spot
      end
    end

    # @past_spots_reviews = current_user.spots.select do |spot|
    #   p spot.event.reviews
    # end
  end
end
