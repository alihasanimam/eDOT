class LabReport < ActiveRecord::Base
  belongs_to :testedby, class_name: 'Employee', foreign_key: :testedby_id
  belongs_to :patient

  validates :patient_id, :month, :testedby_id, presence: true
end
