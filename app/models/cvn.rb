class Cvn < ActiveRecord::Base
  has_attached_file :attachment, :path => ':rails_root/public/system/attachments/:id/:style/:filename.:extension', :styles => { :thumb => "100x100>" }
  paginates_per 5
end
