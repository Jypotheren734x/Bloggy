class AddNumberColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :number_of_posts, :integer
    add_column :users, :followers, :integer
    add_column :users, :views, :integer
  end
end
