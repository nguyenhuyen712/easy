class CreateSlideshows < ActiveRecord::Migration[5.0]
  def change
    create_table :slideshows do |t|
      t.string :image_url
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
