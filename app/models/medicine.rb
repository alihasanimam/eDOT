class Medicine < ActiveRecord::Base
  include TypeOptions

  TYPES = %w(anti-biotic general example_type another_type)

  has_and_belongs_to_many :patients

  validates :name, :type, presence: true
end
