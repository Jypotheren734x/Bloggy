class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @post = Post.find(params[:liked_id])
    current_user.like(@post)
    respond_to do |format|
      format.html { redirect_to @post }
      format.js
    end
  end

  def destroy
    @post = Like.find_by(liked_id: params[:id]).liked
    current_user.unlike(@post)
    respond_to do |format|
      format.html { redirect_to @post }
      format.js
    end
  end
end
