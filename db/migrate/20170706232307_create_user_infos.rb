class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.references :user, foreign_key: true
      t.string :username
      t.string :first_name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
