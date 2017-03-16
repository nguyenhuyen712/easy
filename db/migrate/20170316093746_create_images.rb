class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :url
      t.integer :imageable
      t.string :image_type

      t.timestamps
    end
  end
end
