class AddLatitudeAndLongitudeInHealthCenters < ActiveRecord::Migration
  def change
    add_column :health_centers, :latitude, :float
    add_column :health_centers, :longitude, :float
  end
end
