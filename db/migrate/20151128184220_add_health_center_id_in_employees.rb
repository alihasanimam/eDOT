class AddHealthCenterIdInEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :health_center_id, :integer, index: true
  end
end
