class CreatePatient < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :address
      t.string :national_id
      t.string :gender
      t.date   :birthday
      t.string :status
      t.string :phone

      t.timestamps null: false
    end

    add_index :patients, :national_id,         unique: true
  end
end
