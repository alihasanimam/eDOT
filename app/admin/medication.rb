ActiveAdmin.register Medication do
  belongs_to :patient
  menu false
  navigation_menu :default

  permit_params :patient_id, :month

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Medication') do
      f.input :patient
      f.input :month, collection: Date::MONTHNAMES
    end
    f.actions
  end
end
