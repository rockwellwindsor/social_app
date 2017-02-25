class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.references :space_type
      t.string :icon
      t.boolean :isPublic, :default => false
      t.boolean :isPrivate, :default => false
      t.boolean :active, :default => false

      t.timestamps
    end
  end
end
