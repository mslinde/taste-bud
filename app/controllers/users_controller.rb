class UsersController < ApplicationController
  def show
    @events = Event.where(user_id: current_user)
    authorize @events
  end
end
