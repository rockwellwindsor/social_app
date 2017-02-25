class CreateSpaceSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :space_subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :spaces, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
