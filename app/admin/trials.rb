ActiveAdmin.register Trial do
  controller.authorize_resource

form :html => { :multipart => true } do |f|
f.inputs "Trial" do
 f.input :title
 f.input :description, :input_html => { :class => "ckeditor" }
 f.input :attachment, :as => :file, :label => "Attachment",:hint => f.object.attachment.nil? ? f.template.content_tag(:span, "No Attachment Yet") : f.template.image_tag(f.object.attachment.url(:thumb))
  f.input :references, :input_html => { :class => "ckeditor" }
 f.input :delete_attachment, :as=>:boolean, :required => false, :label => 'Remove Attachment'
end
 f.buttons
end

  index do
    column :title do |e|
     link_to e.title, admin_trial_path(e)
    end
    column :description
    column :attachment_file_name
    column :references
    default_actions
  end
     
end
