class AddDaysInMedications < ActiveRecord::Migration
  def change
    add_column :medications, :days, :jsonb, default: '{}', null: false
    add_index :medications, :days, using: :gin
  end
end
