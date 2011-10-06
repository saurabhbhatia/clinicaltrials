ActiveAdmin.register User do
  index do
  column :email
  column :name
  column :phone
  column :specialization
  default_actions
  end
end
