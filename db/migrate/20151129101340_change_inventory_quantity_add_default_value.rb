class ChangeInventoryQuantityAddDefaultValue < ActiveRecord::Migration
  def up
    change_column :inventories, :quantity, :integer, default: 0
  end

  def down
    true
  end
end
