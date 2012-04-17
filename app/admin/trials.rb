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
   # column :description
column "Description" do |t|
      (t.description).html_safe           
end

    column :attachment_file_name
#    column :references
column "References" do |t|
      (t.references).html_safe
end

    default_actions
  end

 show do |u|
    attributes_table do
        row :title
        row "Description" do (u.description).html_safe end
        row "References" do (u.references).html_safe end
        row :attachment_file_name

      end
      active_admin_comments
end
end
