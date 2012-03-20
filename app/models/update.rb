class Update < ActiveRecord::Base
  #attr_accessor :attachment_update_file_size, :attachment_update_content_type, :attachment_update_file_name
   attr_accessor :delete_attachment
   before_validation { attachment.clear if delete_attachment == '1' }
  has_attached_file :attachment, :path => ':rails_root/public/system/attachments/:id/:style/:filename.:extension', :styles => { :medium => "300x300>", :thumb => "100x100>" }
  paginates_per 5
end
