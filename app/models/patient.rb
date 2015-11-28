class Patient < ActiveRecord::Base
  GENDERS = %w(male female)
  STATUS = %w(new curred ongoing)

  belongs_to :patient_type

  validates :name, :national_id, presence: true

  def self.gender_options
    GENDERS.collect{|o| [o.humanize, o]}
  end

  def self.status_options
    GENDERS.collect{|o| [o.humanize, o]}
  end
end
