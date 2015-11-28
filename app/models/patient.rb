class Patient < ActiveRecord::Base
  GENDERS = %w(male female)

  validates :name, :national_id, presence: true

  def self.gender_options
    GENDERS.collect{|o| [o.humanize, o]}
  end
end
