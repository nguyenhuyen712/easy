class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :parent_id
      t.integer :type

      t.timestamps
    end
  end
end
