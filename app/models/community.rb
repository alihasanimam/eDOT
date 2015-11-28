class Community < ActiveRecord::Base
  include GeoCoder

  belongs_to :health_center
  belongs_to :employee

  validates :name, :health_center, :employee, presence: true
end
