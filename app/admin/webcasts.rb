ActiveAdmin.register Webcast do

  controller #=> returns the controller class

  # So you could do
#  controller.load_and_authorize_resource

  # You can also pass a block to the controller method to 
  # evaluate some code within it
 # controller do
  #  load_and_authorize_resource
 # end

    form :partial => "form"
  index do
   column :title
   column :link
   column :description
   default_actions
  end
end
