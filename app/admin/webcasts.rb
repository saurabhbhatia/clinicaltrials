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
   column :description
   default_actions
  end
end
