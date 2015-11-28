class HealthCenter < ActiveRecord::Base
  TYPES = %w(treatment diagnostic)

  include TypeOptions
  include GeoCoder

  has_many :inventories, as: :owner

  validates :name, :type, presence: true
end
