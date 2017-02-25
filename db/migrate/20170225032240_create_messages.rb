class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :discussion, foreign_key: true
      t.references :user, foreign_key: true
      t.text :body
      t.boolean :selected, :default => false
      t.boolean :pinned, :default => false

      t.timestamps
    end
  end
end
