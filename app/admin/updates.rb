ActiveAdmin.register Update do
form :partial => "form"

index do
  column :title
  column :overview
  column :description
  column :references
  default_actions
end  
end
