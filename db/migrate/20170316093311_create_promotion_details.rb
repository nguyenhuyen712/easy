class CreatePromotionDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :promotion_details do |t|
      t.integer :promotion_id
      t.integer :food_id
      t.integer :sale_off_price

      t.timestamps
    end
  end
end
