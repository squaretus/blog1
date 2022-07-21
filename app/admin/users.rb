ActiveAdmin.register User do
  permit_params :email, :remember_created_at
end
