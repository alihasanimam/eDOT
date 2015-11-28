class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :owner_type
      t.integer :owner_id
      t.integer :medicine_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
