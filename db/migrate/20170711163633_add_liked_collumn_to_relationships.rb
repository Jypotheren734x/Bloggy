class AddLikedCollumnToRelationships < ActiveRecord::Migration[5.1]
  def change
    add_column :followers, :liked_id, :integer
    add_column :followers, :like_id, :integer
  end
  add_index :followers, :liked_id
  add_index :followers, :like_id
  add_index :followers, [:liked_id, :like_id], unique: true
end
