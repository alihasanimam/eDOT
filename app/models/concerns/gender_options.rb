module GenderOptions
  extend ActiveSupport::Concern

  included do
    self.inheritance_column = nil

    def self.gender_options
      (self::GENDERS || []).collect { |o| [o.humanize, o] }
    end
  end
end