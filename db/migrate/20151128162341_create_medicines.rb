class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :description
      t.string :type

      t.timestamps null: false
    end
  end
end
