class Medicine < ActiveRecord::Base
  include TypeOptions

  TYPES = %w(anti-biotic general example_type another_type)

  validates :name, :type, presence: true
end
