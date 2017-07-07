class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
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
