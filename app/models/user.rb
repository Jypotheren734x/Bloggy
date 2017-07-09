class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  after_initialize :init

  def init
    self.number_of_posts  ||= 0
    self.views  ||= 0
    self.followers  ||= 0
  end

  has_many :posts
  has_many :comments

  has_and_belongs_to_many :friendships, class_name: "User", join_table: :friendships, foreign_key: :user_id, association_foreign_key: :friend_user_id

  has_and_belongs_to_many :followers, class_name: "User", join_table: :followers, foreign_key: :user_id, association_foreign_key: :follower_id

  def full_name
    first_name + " " + last_name
  end
end
