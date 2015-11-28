class AddPatientTypeInPatients < ActiveRecord::Migration
  def change
    add_column :patients, :patient_type_id, :integer
  end
end
