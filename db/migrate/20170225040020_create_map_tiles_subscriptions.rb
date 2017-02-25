class CreateMapTilesSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :map_tiles_subscriptions do |t|
      t.references :map_tiles, foreign_key: true
      t.references :map, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :completed
      t.boolean :active
      t.boolean :locked
      t.integer :status

      t.timestamps
    end
  end
end
