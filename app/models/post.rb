class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable

  has_many :passive_likes, class_name: 'Like',
           foreign_key: "liked_id",
           dependent:   :destroy

  has_many :likes, through: :passive_likes, source: :like

  def init
    self.views ||= 0
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
