class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @spots = Spot.all
  end

  def show
    set_spot
  end

  def destroy
    set_spot
    if @spot.destroy
      redirect_to user_path(current_user), notice: "You are no longer going"
      authorize @spot
    else
      render :show
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end
end


