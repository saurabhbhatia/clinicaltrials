ActiveAdmin.register Webcast do
  controller.authorize_resource

  controller #=> returns the controller class

form :html => { :multipart => true } do |f|
f.inputs "Webcast" do
 f.input :title
 f.input :link
 f.input :description, :input_html => { :class => "ckeditor" }
end
 f.buttons
end
  index do
   column :title
   column :link
   #column :description
column "Description" do |w|
      (w.description).html_safe
end
   default_actions
  end

 show do |w|
    attributes_table do
        row :title
        row link do link_to w.link end
        row "Description" do (w.description).html_safe end

      end
      active_admin_comments
end
end
