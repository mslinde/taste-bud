class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def show
    set_spot
  end

  def destroy
    set_spot
    @spot.destroy
    redirect_to user_path(current_user)
    authorize @spot
  end

private

  def set_spot
    @spot = Spot.find(params[:id])
  end
end


