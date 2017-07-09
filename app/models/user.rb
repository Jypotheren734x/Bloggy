class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  after_initialize :init

  def init
    self.number_of_posts ||= 0
    self.views ||= 0
    self.followers ||= 0
  end

  has_many :posts
  has_many :comments

  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_and_belongs_to_many :followers, class_name: "User", join_table: :followers, foreign_key: :user_id, association_foreign_key: :follower_id

  def full_name
    first_name + " " + last_name
  end

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end

end
