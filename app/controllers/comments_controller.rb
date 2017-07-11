class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = @commentable.comments.new comment_params
    @comment.save
  end

  def create
    @comment = @commentable.comments.create comment_params
    @comment.save
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js {}
    end
  end

  private

  def comment_params
    params[:comment][:followed_id] = current_user.id
    params.require(:comment).permit(:body, :followed_id)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end
end
