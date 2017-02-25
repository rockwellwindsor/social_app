class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.references :discussion, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamp :last_read, :null => true
      t.integer :window_state
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
