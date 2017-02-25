class CreateMentions < ActiveRecord::Migration[5.0]
  def change
    create_table :mentions do |t|
      t.references :user, foreign_key: true
      t.string :mentioned_user_name
      t.string :title
      t.integer :mentioned_user_id
      t.string :table_name
      t.integer :table_id
      t.boolean :active, :default => false

      t.timestamps
    end
  end
end
