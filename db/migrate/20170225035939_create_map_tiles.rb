class CreateMapTiles < ActiveRecord::Migration[5.0]
  def change
    create_table :map_tiles do |t|
      t.string :title
      t.text :description
      t.string :icon
      t.boolean :active
      t.references :map, foreign_key: true
      t.integer :parent_tile_id
      t.boolean :shared
      t.boolean :locked
      t.string :color
      t.references :map_category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
