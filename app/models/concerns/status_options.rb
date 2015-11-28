module StatusOptions
  extend ActiveSupport::Concern

  included do
    self.inheritance_column = nil

    def self.status_options
      (self::STATUSES || []).collect { |o| [o.humanize, o] }
    end
  end
end