class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :file_name
      t.string :document_type
      t.references :user, foreign_key: true
      t.boolean :active, :default => false
      t.integer :privacy_status
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
