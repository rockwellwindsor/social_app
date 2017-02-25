class CreateMapCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :map_categories do |t|
      t.string :title
      t.string :color
      t.string :icon
      t.boolean :active

      t.timestamps
    end
  end
end
