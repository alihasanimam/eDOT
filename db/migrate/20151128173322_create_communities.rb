class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :address
      t.integer :employee_id, index: true
      t.integer :health_center_id, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
