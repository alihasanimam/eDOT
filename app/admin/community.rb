ActiveAdmin.register Community do
  belongs_to :health_center

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Community') do
      f.input :name
      f.input :address, as: :string, input_html: { class: 'address' }
      f.input :employee
    end
    f.actions
  end

  menu false
  navigation_menu :default

  permit_params :name, :address, :employee_id
end
