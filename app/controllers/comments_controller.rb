class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to book_path(@comment.commentable) }
      format.js
    end
    
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :commentable_type, :commentable_id).merge(user_id: current_user.id)
  end
end