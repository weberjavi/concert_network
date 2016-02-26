class CommentsController < ApplicationController

  def edit
    
  end

  def new
    @comment = Comment.new
  end

  def create
    @concert = Concert.find params[:concert_id]
    @concert_comments = @concert.comments
    @comment = @concert.comments.new(comment_params)
    if @comment.save
      redirect_to concert_path(id: params[:concert_id])
    else
      flash[:alert] = "You have some errors"
      redirect_to concert_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment, :date)
  end
  def date_now
    
  end
end
