class PatientType < ActiveRecord::Base
  validates :name, :description, presence: true
end
