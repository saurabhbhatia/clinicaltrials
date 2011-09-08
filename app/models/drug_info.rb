class DrugInfo < ActiveRecord::Base
  has_attached_file :attachment_drug, :styles => { :thumb => "100x100>" }
end
