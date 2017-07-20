class Like < ApplicationRecord
  belongs_to :like, class_name: "User"
  belongs_to :liked, class_name: "Post"
  validates :like_id, presence: true
  validates :liked_id, presence: true
end
