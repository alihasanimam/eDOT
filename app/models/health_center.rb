class HealthCenter < ActiveRecord::Base
  TYPES = %w(treatment diagnostic)

  include TypeOptions
  include GeoCoder

  has_many :inventories, as: :owner, dependent: :destroy
  has_many :communities, dependent: :destroy
  has_many :employees, dependent:  :destroy

  validates :name, :type, presence: true
end
