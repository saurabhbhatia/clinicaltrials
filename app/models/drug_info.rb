class DrugInfo < ActiveRecord::Base
  has_attached_file :attachment_drug, :styles => { :thumb => "100x100>" }
   paginate_alphabetically :by => :title
define_index do
    indexes title, :sortable => true
    indexes action

    has created_at, updated_at
  end
end
