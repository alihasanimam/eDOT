ActiveAdmin.register Inventory do
  controller do
    belongs_to :health_center, :employee, polymorphic: true
  end
  # belongs_to :health_center, :employee, polymorphic: true
  # belongs_to :employee, polymorphic: true

  menu false
  navigation_menu :default

  permit_params :owner_type, :owner_type_id, :quantity, :medicine_id

  # belongs_to :employee, polymorphic: true

end
