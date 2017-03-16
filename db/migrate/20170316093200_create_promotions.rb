class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer :restaurant_id
      t.text :content

      t.timestamps
    end
  end
end
