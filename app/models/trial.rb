class Trial < ActiveRecord::Base
  has_attached_file :attachment, :styles => { :thumb => "100x100>" }
end
