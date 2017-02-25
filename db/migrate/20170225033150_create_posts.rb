class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :space, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :favorited_count
      t.text :content
      t.integer :likes_count

      t.timestamps
    end
  end
end
