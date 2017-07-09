class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user.update(views: @user.views + 1)
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(first_name: params[:user][:first_name]) if !params[:user][:first_name].nil?
    current_user.update(last_name: params[:user][:last_name]) if !params[:user][:last_name].nil?
  end

  def follow
    @user = User.find(params[:id])
    @user.update(number_of_followers: @user.followers+1)
  end

end
