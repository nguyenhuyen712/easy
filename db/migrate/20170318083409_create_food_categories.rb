class CreateFoodCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :food_categories do |t|
      t.integer :category_id
      t.integer :food_id

      t.timestamps
    end
  end
end
