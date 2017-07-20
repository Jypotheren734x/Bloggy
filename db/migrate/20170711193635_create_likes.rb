class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :liked_id
      t.integer :like_id

      t.timestamps
    end
    add_index :likes, :like_id
    add_index :likes, :liked_id
    add_index :likes, [:like_id, :liked_id], unique: true
  end
end
