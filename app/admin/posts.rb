ActiveAdmin.register Post do
  permit_params :title, :body, :pictures, :user_id

  show do
    attributes_table do
      row :title
      row :body
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
  # permit_params :title, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
