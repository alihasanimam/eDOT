ActiveAdmin.register HealthCenter do
  permit_params :name, :address, :type, :phone

  controller do
    def scoped_collection
      if current_employee.doctor?
        end_of_association_chain.for_employee(current_employee)
      else
        end_of_association_chain
      end
    end
  end

  form do |f|
    f.inputs I18n.t('active_admin.details', model: 'Health Center') do
      f.input :name
      f.input :address, as: :string, input_html: { class: 'address' }
      f.input :type, collection: HealthCenter::type_options
    end
    f.actions
  end

  show do
    panel I18n.t('active_admin.details', model: 'Health Center') do
      attributes_table_for resource do
        row :id
        row :name
        row :address
        row :latitude
        row :longitude
        row :created_at
        row :updated_at
      end
    end

    tabs do
      tab 'Patient Map' do
        render partial: 'map', locals: {patients: Patient.all}
      end

      tab 'Employees' do
        collection = resource.employees.page(params[:employees_page]).per(10)
        pagination_options = {param_name: 'employees_page', download_links: false}
        paginated_collection(collection, pagination_options) do
          table_options = { id: 'employees-table', class: 'index_table' }
          table_for(collection, table_options) do
            column :id
            column :name
            column :email
            column :type
            column :gender
            column :birthday
            column :created_at
            column :updated_at
            column 'Actions' do |employee|
              actions = []
              actions << link_to(I18n.t('active_admin.view'), admin_health_center_employee_path(resource, employee))
              actions << link_to(I18n.t('active_admin.edit'), edit_admin_health_center_employee_path(resource, employee))
              actions << link_to(I18n.t('active_admin.delete'), admin_health_center_employee_path(resource, employee), method: :delete, data: { confirm: I18n.t('active_admin.delete_confirmation')})
              actions.join(' ').html_safe
            end
          end
        end

        div do
          para do
            link_to I18n.t('active_admin.new_model', model: 'Employee'), new_admin_health_center_employee_path(resource), class: 'button'
          end
        end
      end

      tab 'Communities' do
        collection = resource.communities.page(params[:communities_page]).per(10)
        pagination_options = {param_name: 'communities_page', download_links: false}
        paginated_collection(collection, pagination_options) do
          table_options = { id: 'communities-table', class: 'index_table' }
          table_for(collection, table_options) do
            column :id
            column :name
            column :address
            column :latitude
            column :longitude
            column :created_at
            column :updated_at
            column 'Actions' do |community|
              actions = []
              actions << link_to(I18n.t('active_admin.view'), admin_health_center_community_path(resource, community))
              actions << link_to(I18n.t('active_admin.edit'), edit_admin_health_center_community_path(resource, community))
              actions << link_to(I18n.t('active_admin.delete'), admin_health_center_community_path(resource, community), method: :delete, data: { confirm: I18n.t('active_admin.delete_confirmation')})
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

      tab 'Inventories' do
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
            # column :updated_at
            column 'Actions' do |inventory|
              actions = []
              actions << link_to(I18n.t('active_admin.view'), admin_health_center_inventory_path(resource, inventory))
              actions << link_to(I18n.t('active_admin.edit'), edit_admin_health_center_inventory_path(resource, inventory))
              actions << link_to(I18n.t('active_admin.delete'), admin_health_center_inventory_path(resource, inventory), method: :delete, data: { confirm: I18n.t('active_admin.delete_confirmation')})
              actions.join(' ').html_safe
            end
          end
        end

        div do
          para do
            link_to I18n.t('active_admin.new_model', model: 'Inventory'), new_admin_health_center_inventory_path(resource), class: 'button'
          end
        end
      end
    end
  end
end
