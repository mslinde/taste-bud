class UsersController < ApplicationController
  def show
    @events = Event.where(user_id: current_user)
    @spot = Spot.find_by_id(params[:id])
    @to_review = Review.where(user: current_user, attended: nil).first
    authorize @events
  end
end
