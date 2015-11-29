class RenameCaredByToCaredById < ActiveRecord::Migration
  def change
    rename_column :patients, :cared_by, :cared_by_id
  end
end
