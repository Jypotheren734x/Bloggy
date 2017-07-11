class PostsController < ApplicationController
  def index
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @post.views ||= 0
    @post.views += 1
    @post.save
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.new(post_params)
    @post.save
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js {}
    end
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js {}
    end
  end

  def update
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :followed_id, :url)
  end

end
