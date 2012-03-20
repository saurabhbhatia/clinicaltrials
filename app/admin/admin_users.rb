ActiveAdmin.register AdminUser do
  controller.authorize_resource

 menu :if => proc{ can?(:manage, AdminUser) }     
end
