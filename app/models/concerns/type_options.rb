module TypeOptions
  extend ActiveSupport::Concern

  included do
    self.inheritance_column = nil

    def self.type_options
      (self::TYPES || []).collect { |o| [o.humanize, o] }
    end
  end
end