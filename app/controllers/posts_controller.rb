class PostsController < ApplicationController
  def index
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.new(post_params)
    current_user.update(number_of_posts: current_user.number_of_posts + 1) if @post.save
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.js {}
    end
  end

  def create
    @post = current_user.posts.new(post_params)
    current_user.update(number_of_posts: current_user.number_of_posts + 1) if @post.save
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
    if @post.destroy
      current_user.update(number_of_posts: current_user.number_of_posts - 1)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :url)
  end

end
