class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id
      t.string :month
      t.string :year

      t.timestamps null: false
    end
  end
end
