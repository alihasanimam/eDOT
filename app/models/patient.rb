class Patient < ActiveRecord::Base
  STATUSES = %w(new curred ongoing)
  GENDERS = %w(male female)
  include GenderOptions
  include StatusOptions
  include GeoCoder

  belongs_to :patient_type
  belongs_to :cared_by, class_name: 'Employee', foreign_key: :cared_by_id
  has_many :medications
  has_many :lab_reports
  has_and_belongs_to_many :medicines

  validates :name, :national_id, :cared_by, presence: true
end
