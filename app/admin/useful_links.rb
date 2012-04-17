ActiveAdmin.register UsefulLink do
controller.authorize_resource

  controller.authorize_resource
form :html => { :multipart => true } do |f|
f.inputs "Update" do
 f.input :links, :input_html => { :class => "ckeditor" }
end
 f.buttons
end
index do
column "Links" do |l|
       (l.links).html_safe
    end
  #column :links,
  default_actions
end  
show do
 (useful_link.links).html_safe
 
end

end
