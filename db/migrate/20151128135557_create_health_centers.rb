class CreateHealthCenters < ActiveRecord::Migration
  def change
    create_table :health_centers do |t|
      t.string :name
      t.text :address
      t.string :type
      t.string :phone

      t.timestamps null: false
    end
  end
end
