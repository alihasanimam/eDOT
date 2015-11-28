class HealthCenter < ActiveRecord::Base
  TYPES = %w(treatment diagnostic)

  include TypeOptions
  include GeoCoder

  validates :name, :type, presence: true
end
