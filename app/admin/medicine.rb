ActiveAdmin.register Medicine do
  permit_params :name, :type, :description

  index do
    selectable_column
    id_column
    column :name
    column :type
    actions
  end

  filter :name
  filter :type, as: :select, collection: Medicine::type_options

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Medicine') do
      f.input :name
      f.input :type, collection: Medicine::type_options
      f.input :description, as: :text
    end
    f.actions
  end
end
