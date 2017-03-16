class CreateBillDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_details do |t|
      t.integer :bill_id
      t.integer :food_id
      t.integer :quantity
      t.integer :amount

      t.timestamps
    end
  end
end
