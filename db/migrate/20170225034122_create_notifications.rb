class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.boolean :active, :default => false
      t.timestamp :last_read
      t.string :table_name
      t.integer :table_id
      t.string :link
      t.string :category

      t.timestamps
    end
  end
end
