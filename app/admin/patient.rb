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

  member_action :update_medication, method: :post do
    if params[:medication_id].present?
      medication = resource.medications.find(params[:medication_id])
      medication.days = params[:days]
      medication.save
    end

    render nothing: true
  end

  filter :name
  filter :national_id
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Patient') do
      f.input :name
      f.input :address, input_html: { class: 'address' }
      f.input :national_id, label: 'National ID'
      f.input :gender, collection: Patient::gender_options
      f.input :birthday, as: :datepicker, datepicker_options: { defaultDate: '1970-01-01' }
      f.input :patient_type
      f.input :status, collection: Patient::status_options
      f.input :phone
    end
    f.actions
  end

  show do
    panel I18n.t('active_admin.details', model: 'Employee') do
      attributes_table_for resource do
        row :id
        row :name
        row :address
        row :national_id
        row :gender
        row :status
        row :created_at
        row :updated_at
      end
    end

    tabs do
      tab 'Medications' do
        render partial: 'medications', locals: { medications: resource.medications.order(created_at: :asc) }
        div do
          para do
            link_to I18n.t('active_admin.new_model', model: 'Medication'), new_admin_patient_medication_path(resource), class: 'button'
          end
        end
      end
    end
  end
end
