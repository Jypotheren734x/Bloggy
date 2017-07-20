class PostsController < ApplicationController
  before_action :authenticate_user!
  
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
    @following = Follower.where(followed_id: current_user)
    @following.each do |follower|
      Notification.create(recipient: follower.follower, user: current_user, action: "followed_user_post", notifiable: follower.follower)
    end
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
