ActiveAdmin.register Post do
  permit_params :title, :boddy, :pictures, :user_id

  show do
    attributes_table do
      row :title
      row :boddy
      row :user
      row :created_at

    end
    active_admin_comments
  end
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :boddy
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :boddy]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
