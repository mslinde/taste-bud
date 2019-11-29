class UsersController < ApplicationController
  def show
    @events = Event.where(user_id: current_user)
    @spot = Spot.find_by_id(params[:id])
    authorize @events
  end
end
