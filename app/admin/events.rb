ActiveAdmin.register Event do
  controller.authorize_resource
form :html => { :multipart => true } do |f|
f.inputs "Event" do
 f.input :topic
 f.input :date, :start_year => Date.today.year, :end_year => 2030, :label => "Start Date", :selected => Date.today, :include_blank => false

 f.input :todate, :start_year => Date.today.year, :end_year => 2030, :label => "End Date", :include_blank => false
 f.input :organization
 f.input :location
 f.input :more_info, :input_html => { :class => "ckeditor" }
end
 f.buttons
end
#form :partial => "form"

actions :all
  index do
    column :topic do |e|
     link_to e.topic, admin_event_path(e)
    end
    column "From Date", :date
    column "To Date", :todate
    column :more_info
    column :organization
    column :location
    default_actions
    #column "Actions" do |e|
     # link_to 'Destroy', e, :confirm => 'Are you sure?', :method => :delete
    #end
  end


  
end
