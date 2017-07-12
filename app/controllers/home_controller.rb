class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @recent = Post.all.reverse
    @popular = Like.order('liked_id desc').first(5)
    @trending = Like.order('liked_id desc').order("created_at desc").first(5)
    @post = Post.new
  end

  def search
    if !params[:querry].nil?
      @users = User.where('username LIKE ?', '%' + params[:querry] +'%').all
      @results = Post.where('content LIKE ?', '%' + params[:querry] +'%').all
      @results += Post.where('title LIKE ?', '%' + params[:querry] +'%').all
      @users.each do |user|
        @results += user.posts
      end
    end
  end
end
