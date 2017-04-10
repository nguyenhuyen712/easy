class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :vote

      t.timestamps
    end
  end
end
