ActiveAdmin.register Patient do
  permit_params :name, :address, :national_id, :gender, :birthday, :status, :phone, :patient_type_id

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :national_id
    column :gender
    column :status
    column :created_at
    actions
  end

  filter :name
  filter :national_id
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Patient') do
      f.input :name
      f.input :address
      f.input :national_id, label: 'National ID'
      f.input :gender, collection: Patient::gender_options
      f.input :birthday, as: :datepicker, datepicker_options: { defaultDate: '1970-01-01' }
      f.input :patient_type
      f.input :status, collection: Patient::status_options
      f.input :phone
    end
    f.actions
  end
end
