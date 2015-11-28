ActiveAdmin.register LabReport do

  permit_params :patient_id, :month, :data1, :data2, :testedby_id

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Lab Report') do
      f.input :patient
      f.input :month
      f.input :data1
      f.input :data2
      f.input :testedby
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :patient
    column :month
    column :data2
    column :testedby
    column :created_at
    actions
  end

end
