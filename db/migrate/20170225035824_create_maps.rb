class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
