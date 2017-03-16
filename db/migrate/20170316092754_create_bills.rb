class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :bill_code
      t.integer :restaurant_id
      t.integer :total
      t.integer :ship_price
      t.integer :status
      t.string :recipient_name
      t.string :recipient_phone
      t.string :recipient_address
      t.string :note

      t.timestamps
    end
  end
end
