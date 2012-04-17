ActiveAdmin.register Banner do
  controller.skip_authorization_check

#custom form 
#form :partial => "form"
form :html => { :multipart => true } do |f|
f.inputs "Banner" do
 f.input :title
 f.input :description, :input_html => { :class => "ckeditor" }
 f.input :banner, :as => :file, :label => "Banner Image",:hint => f.object.banner.nil? ? f.template.content_tag(:span, "No Image Yet") : f.template.image_tag(f.object.banner.url(:thumb)) 
end
 f.buttons
end

#custom show for banner
show do
  render "show"
end
#cusotm index
index do
  column :title
#  column :description
column "Description" do |b|
      (b.description).html_safe
end

  column :banner_file_name
  default_actions
end
end
