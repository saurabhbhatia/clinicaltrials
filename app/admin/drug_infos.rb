ActiveAdmin.register DrugInfo do
  #custom show
  show do
    render "show"
  end
 #custom form 
form :partial => "form" 
#custom index
index do
  column :title
  column :action
  column :indications
  column :interaction
  column :attachment_drug_file_name
  default_actions
end

end
