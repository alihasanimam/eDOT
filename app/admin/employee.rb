ActiveAdmin.register Employee do
  permit_params :email, :password, :password_confirmation, :name, :gender, :type, :birthday, :phone

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Employee') do
      f.input :email
      f.input :name
      f.input :gender, collection: Employee::gender_options
      f.input :type, collection: Employee::type_options
      f.input :birthday, as: :datepicker, datepicker_options: { defaultDate: '1970-01-01' }
      f.input :phone
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end

    end
    f.actions
  end

end
