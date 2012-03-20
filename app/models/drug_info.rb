class DrugInfo < ActiveRecord::Base
attr_accessor :delete_attachment
before_validation { attachment_drug.clear if delete_attachment == '1' }

  has_attached_file :attachment_drug, :styles => { :thumb => "100x100>" }
   paginate_alphabetically :by => :title
     paginates_per 5
define_index do
    indexes title, :sortable => true
    indexes action

    has created_at, updated_at
  end
end
