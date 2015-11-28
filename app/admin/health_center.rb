ActiveAdmin.register HealthCenter do
  permit_params :name, :address, :type, :phone

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Health Center') do
      f.input :name
      f.input :address, as: :string, input_html: { class: 'address' }
      f.input :type, collection: HealthCenter::type_options
    end
    f.actions
  end
end
