class AddCaredByInPatients < ActiveRecord::Migration
  def change
    add_column :patients, :cared_by, :integer, index: true
  end
end
