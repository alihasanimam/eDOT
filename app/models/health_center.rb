class HealthCenter < ActiveRecord::Base
  TYPES = %w(treatment diagnostic)

  include TypeOptions
  include GeoCoder

  has_many :communities, dependent: :destroy

  validates :name, :type, presence: true
end
