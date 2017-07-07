class PostController < ApplicationController
  def index
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      current_user.update(number_of_posts: current_user.number_of_posts + 1)
      redirect_to post_index_path+"?id="+@post.id.to_s
    end
  end

  def update
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      current_user.update(number_of_posts: current_user.number_of_posts + 1)
      redirect_to user_index_path+"?id="+current_user.id.to_s
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :url)
  end

end
