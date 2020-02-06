class CommentsController < ApplicationController
  before_action :set_spot
  before_action :authenticate_user!

  def new
    set_spot
    @event = spot.event
    @comment = Comment.new
    authorize @comment
  end

  def create
    set_spot
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.spot = @spot
    @comment.save!
    authorize @comment
  end

  # def destroy

  # end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:note)
  end
end
