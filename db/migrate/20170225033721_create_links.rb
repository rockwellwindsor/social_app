class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.references :user, foreign_key: true
      t.boolean :active, :default => false
      t.string :table_name
      t.integer :table_id
      t.text :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
