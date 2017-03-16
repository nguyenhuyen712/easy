class CreateFavoriteRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_restaurants do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
