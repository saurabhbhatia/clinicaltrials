ActiveAdmin.register Update do
  controller.authorize_resource

  controller.authorize_resource
form :html => { :multipart => true } do |f|
f.inputs "Update" do
 f.input :title
 f.input :overview, :input_html => { :class => "ckeditor" }
 f.input :description, :input_html => { :class => "ckeditor" }
 f.input :references, :input_html => { :class => "ckeditor" }
 f.input :attachment, :as => :file, :label => "Attachment",:hint => f.object.attachment.nil? ? f.template.content_tag(:span, "No Attachment Yet") : f.template.image_tag(f.object.attachment.url(:thumb))
 f.input :delete_attachment, :as=>:boolean, :required => false, :label => 'Remove Attachment'
end
 f.buttons
end

index do
  column :title
#  column :overview
column "Overview" do |u|
      (u.overview).html_safe
end

#  column :description
column "Description" do |u|
      (u.description).html_safe
end

#  column :references
column "References" do |u|
      (u.references).html_safe
end

  column :attachment_file_name
  default_actions
end  
show do |u|
    attributes_table do
        row :title
        row "Overview" do (u.overview).html_safe end
        row "Description" do (u.description).html_safe end
        row "References" do (u.references).html_safe end
        row :attachment_file_name

      end
      active_admin_comments
end
end
