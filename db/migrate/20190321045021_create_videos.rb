class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :url
      t.integer :view
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
