ActiveAdmin.register Trial do
form :partial => "form"  
#custom show for banner
show do
  render "show"
end
#custom index
index do
  column :title
  column :description
  column :attachment_file_name
  column :attachment_content_type
  default_actions
end
end
