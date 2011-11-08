class AddAttachmentToDrugInfos < ActiveRecord::Migration
  def self.up
    add_column :drug_infos, :attachment_drug_file_name, :string
    add_column :drug_infos, :attachment_drug_content_type, :string
    add_column :drug_infos, :attachment_drug_file_size, :integer
  end

  def self.down
    remove_column :drug_infos, :attachment_drug_file_size
    remove_column :drug_infos, :attachment_drug_content_type
    remove_column :drug_infos, :attachment_drug_file_name
  end
end
