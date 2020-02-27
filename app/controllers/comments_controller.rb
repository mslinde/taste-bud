class CommentsController < ApplicationController
  before_action :set_spot, only: [:create, :destroy]
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.spot = @spot_occupied
    @event = @comment.spot.event
    authorize @comment
    if @comment.save
      respond_to do |format|
        format.html { redirect_to event_path(@event) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_back(fallback_location: root_path, alert: "Comments cannot be blank. Please enter message into text field.") }
        format.js
      end
    end

  end

  def destroy
    set_comment
    @comment.destroy
    authorize @comment
    redirect_back(fallback_location: root_path, alert: "Comment deleted")
  end

  private

  def set_spot
    @spot_occupied = Spot.find(params[:spot_id])
  end

  def set_comment
    @comment = @spot_occupied.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:note, :spot_id)
  end
end
