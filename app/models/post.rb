class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable

  has_many :passive_likes, class_name: 'Like',
           foreign_key: "liked_id",
           dependent:   :destroy

  has_many :likes, through: :passive_likes, source: :like
end
