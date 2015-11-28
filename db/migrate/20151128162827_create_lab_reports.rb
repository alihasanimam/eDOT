class CreateLabReports < ActiveRecord::Migration
  def change
    create_table :lab_reports do |t|
      t.integer :patient_id
      t.integer :month
      t.string :data1
      t.string :data2
      t.integer :testedby_id

      t.timestamps null: false
    end
    add_index :lab_reports, :patient_id
    add_index :lab_reports, :testedby_id
  end
end
