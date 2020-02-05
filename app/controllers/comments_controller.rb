class CommentsController < ApplicationController

  def new
    set_spot
    @event = spot.event
    @comment = Comment.new
  end

  def create
    set_spot
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.spot = @spot
      if @comment.save!
        redirect_to event_path(@event)
      else
        render :new
    end
  end

  def update
    set_comment
  end

  def edit
    set_comment
  end

  # def destroy

  # end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
