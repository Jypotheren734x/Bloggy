class FollowersController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    Notification.create(recipient: @user, user: current_user, action: "followed", notifiable: @user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Follower.find_by(followed_id: params[:id]).followed
    current_user.unfollow(@user)
    Notification.create(recipient: @user, user: current_user, action: "unfollowed", notifiable: @user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
