class CreateMedicinesPatients < ActiveRecord::Migration
  def change
    create_table :medicines_patients, id: false do |t|
      t.integer :medicine_id, index: true
      t.integer :patient_id, index: true
    end
  end
end
