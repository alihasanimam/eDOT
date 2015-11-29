ActiveAdmin.register Inventory do
  controller do
    belongs_to :health_center, :employee, polymorphic: true
  end

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Inventory') do
      f.input :medicine
      f.input :quantity
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :medicine
    column :quantity
    column :created_at
    actions
  end

  menu false
  navigation_menu :default

  permit_params :owner_type, :owner_type_id, :quantity, :medicine_id

end
