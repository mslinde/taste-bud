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
    @comment.user = current_user
    @comment.spot = @spot
    if @comment.blank?
      render :new
    else
      @comment.save!
      redirect_back(fallback_location: root_path)
    end
    authorize @comment
  end

   # def destroy
   #  set_comment
   #  @comment.destroy
   #  @comment.user = current_user
   #  authorize @comment
   # end
  end

   def destroy
    set_spot
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
