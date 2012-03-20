class Download < ActiveRecord::Base
  has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  paginates_per 2
end
