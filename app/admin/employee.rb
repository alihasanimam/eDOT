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

  show do
    panel I18n.t('active_admin.details', model: 'Health Center') do
      attributes_table_for resource do
        row :id
        row :name
        row :email
        row :gender
        row :type
        row :birthday
        row :gender
        row :phone
        row :created_at
        row :updated_at
      end
    end

    tabs do
      tab 'Medicines' do
        collection = resource.inventories.includes(:medicine).page(params[:inventories_page]).per(10)
        pagination_options = {param_name: 'inventories_page', download_links: false}
        paginated_collection(collection, pagination_options) do
          table_options = { id: 'inventories-table', class: 'index_table' }
          table_for(collection, table_options) do
            column :medicine do |inventory|
              inventory.medicine.name
            end
            column :quantity
            column :created_at
            column :updated_at
            column 'Actions' do |inventory|
              actions = []
              actions << link_to(I18n.t('active_admin.view'), admin_employee_inventory_path(resource, inventory))
              actions << link_to(I18n.t('active_admin.edit'), edit_admin_employee_inventory_path(resource, inventory))
              actions << link_to(I18n.t('active_admin.delete'), admin_employee_inventory_path(resource, inventory), method: :delete, data: { confirm: I18n.t('active_admin.delete_confirmation')})
              actions.join(' ').html_safe
            end
          end
        end

        div do
          para do
            link_to I18n.t('active_admin.new_model', model: 'Community'), new_admin_health_center_community_path(resource), class: 'button'
          end
        end
      end
    end
  end

end
