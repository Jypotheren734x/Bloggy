class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  after_initialize :init

  def init
    self.views ||= 0
  end

  has_many :posts
  has_many :comments

  has_many :active_followers, class_name: 'Follower',
           foreign_key: "follower_id",
           dependent:   :destroy
  has_many :passive_followers, class_name: 'Follower',
           foreign_key: "followed_id",
           dependent:   :destroy

  has_many :active_likes, class_name: 'Like',
           foreign_key: "like_id",
           dependent:   :destroy

  has_many :liked, through: :active_likes, source: :liked

  has_many :following, through: :active_followers, source: :followed
  has_many :followers, through: :passive_followers, source: :follower

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end
  def like(post)
    liked << post
  end

  def unlike(post)
    liked.delete(post)
  end

  def liked?(post)
    liked.include?(post)
  end

  def full_name
    first_name + " " + last_name
  end

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end

end
