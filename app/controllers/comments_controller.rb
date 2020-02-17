class CommentsController < ApplicationController
  before_action :set_spot, only: [:new, :create, :destroy]
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def new
    set_spot
    @event = spot.event
    @comment = Comment.new
    authorize @comment
  end

  def create
    set_spot
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.spot = @spot
    if @comment.save
      respond_to do |format|
        format.html { redirect_back(fallback_location: root_path) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_back(fallback_location: root_path, alert: "Comments cannot be blank. Please enter message into text field.") }
        format.js
      end
    end
    authorize @comment
  end

   def destroy
    set_comment
    @comment.destroy
    authorize @comment
   end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:note, :spot_id)
  end
end
