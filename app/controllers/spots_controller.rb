class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def show
    set_spot
  end

private

  def set_spot
    @spot = spot.find(params[:id])
  end
end


