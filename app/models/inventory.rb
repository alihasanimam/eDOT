class Inventory < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :owner, polymorphic: true
end
