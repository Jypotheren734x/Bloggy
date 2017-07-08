class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
