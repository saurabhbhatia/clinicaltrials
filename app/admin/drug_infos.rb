ActiveAdmin.register DrugInfo do
  controller.authorize_resource

  #custom show
  show do
    render "show"
  end
 #custom form 
form :html => { :multipart => true } do |f|
f.inputs "Drug Infos" do
 f.input :title
 f.input :action, :input_html => { :class => "ckeditor" }
 f.input :indications, :input_html => { :class => "ckeditor" }
 f.input :interaction, :input_html => { :class => "ckeditor" }
 f.input :attachment_drug, :as => :file, :label => "Drug Info Attachment",:hint => f.object.attachment_drug.nil? ? f.template.content_tag(:span, "No Attachment Yet") : f.template.image_tag(f.object.attachment_drug.url(:thumb)) 
 f.input :delete_attachment, :as=>:boolean, :required => false, :label => 'Remove Attachment'
end
 f.buttons
end

#custom index
index do
  column :title
#  column :action
column "Action" do |d|
      (d.action).html_safe
end
column "Indications" do |d|
      (d.indications).html_safe           
end
column "Interactions" do |d|
      (d.interaction).html_safe           
end

  #column :indications
  #column :interaction
  column :attachment_drug_file_name
  default_actions
end
 show do |u|
    attributes_table do
        row :title
        row "Action" do (u.action).html_safe end
        row "Indications" do (u.indications).html_safe end
        row "Interactions" do (u.interaction).html_safe end
        row :attachment_drug_file_name

      end
      active_admin_comments
end

end
