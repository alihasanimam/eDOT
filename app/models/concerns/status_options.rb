module StatusOptions
  extend ActiveSupport::Concern

  included do
    def self.status_options
      (self::STATUSES || []).collect { |o| [o.humanize, o] }
    end
  end
end