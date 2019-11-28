class UsersController < ApplicationController
  def show
    @spots = Spot.where(user_id: current_user)
    authorize @spots
  end
end
