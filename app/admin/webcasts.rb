ActiveAdmin.register Webcast do
  index do
   column :title
   column :link
   column :description
   default_actions
  end
end
