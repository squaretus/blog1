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
