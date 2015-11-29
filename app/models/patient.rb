class Patient < ActiveRecord::Base
  STATUSES = %w(new curred ongoing)
  GENDERS = %w(male female)
  include GenderOptions
  include StatusOptions
  include GeoCoder

  belongs_to :patient_type

  validates :name, :national_id, presence: true
end
