class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    @friendship.accepted ||= false
    @friendship.save
    Notification.create(recipient: @friendship.friend, user: @friendship.user, action: "friend_request", notifiable: @friendship.friend)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @friendship = Friendship.find_by(user_id: params[:id])
    @friendship.update(accepted: true)
    @friendship.save
    Notification.create(recipient: @friendship.friend, user: @friendship.user, action: "friend_request_accepted", notifiable: @friendship.friend)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    Notification.create(recipient: @friendship.friend, user: @friendship.user, action: "friend_request_declined", notifiable: @friendship.friend)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
