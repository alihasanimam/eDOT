class Patient < ActiveRecord::Base
  STATUSES = %w(new curred ongoing)
  GENDERS = %w(male female)
  include GenderOptions
  include StatusOptions
  include GeoCoder

  belongs_to :patient_type
  belongs_to :cared_by, class_name: 'Employee', foreign_key: :cared_by
  has_many :medications
  has_many :lab_reports

  validates :name, :national_id, :cared_by, presence: true
end
