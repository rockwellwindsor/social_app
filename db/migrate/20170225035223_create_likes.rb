class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.string :table_name
      t.integer :table_id

      t.timestamps
    end
  end
end
