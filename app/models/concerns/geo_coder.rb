module GeoCoder
  extend ActiveSupport::Concern

  included do
    geocoded_by :address
    after_validation :geocode, if: ->(object){ object.address.present? && object.address_changed? }
  end
end