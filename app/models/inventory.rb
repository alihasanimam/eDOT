class Inventory < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :owner, polymorphic: true

  validates :quantity, numericality: true
  before_save :sync_inventory

  protected
  def sync_inventory
    if self.owner_type == 'Employee' && self.quantity_changed?
      hc = self.owner.health_center
      hc_medicine = Inventory.where(medicine_id: self.medicine.id, owner_type: 'HealthCenter', owner_id: hc.id).first
      unless hc_medicine.present?
        hc_medicine = hc.inventories.create(medicine_id: self.medicine.id, quantity: 0)
      end

      hc_medicine.quantity -= self.quantity
      hc_medicine.save!
    end
  end
end
