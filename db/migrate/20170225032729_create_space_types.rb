class CreateSpaceTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :space_types do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.string :icon

      t.timestamps
    end
  end
end
