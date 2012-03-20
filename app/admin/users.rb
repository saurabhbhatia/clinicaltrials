ActiveAdmin.register User do
  controller.authorize_resource
  scope :approval_pending
  index do
  column :email
  column :name
  column :phone
  column :specialization
  column :approved
  column "Visits", :sign_in_count
  column "Last Login At", :last_sign_in_at
  column "Current Login At", :current_sign_in_at
  default_actions
  end
end
