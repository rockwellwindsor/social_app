class CreateSocialLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :social_links do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
