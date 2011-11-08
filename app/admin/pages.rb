ActiveAdmin.register Page do
    form :partial => "form"  
    index do
      column :title
      column :meta
      column :content
      column :slug
      default_actions
    end
end
