ActiveAdmin.register Download do
  controller.authorize_resource
form :html => { :multipart => true } do |f|
f.inputs "Download" do
 f.input :title
f.input :download_type, :as => :select, :collection => ['iRAAS Journal', 'Guidelines', 'Telma 24 X 7', 'Slide Kits', 'Patient Education Material'], :include_blank => false
 f.input :description, :input_html => { :class => "ckeditor" }
 f.input :attachment, :as => :file, :label => "Attachment",:hint => f.object.attachment.nil? ? f.template.content_tag(:span, "No Attachment Yet") : f.template.image_tag(f.object.attachment.url(:thumb)) 
end
 f.buttons
end

#cusotm index
index do
  column :title
  column :description
  column :attachment_file_name
  column :download_type
  default_actions
end

  
end
