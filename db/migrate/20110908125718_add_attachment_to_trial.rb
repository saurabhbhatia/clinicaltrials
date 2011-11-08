class AddAttachmentToTrial < ActiveRecord::Migration
  def self.up
    add_column :trials, :attachment_file_name, :string
    add_column :trials, :attachment_content_type, :string
    add_column :trials, :attachment_file_size, :integer
  end

  def self.down
    remove_column :trials, :attachment_file_size
    remove_column :trials, :attachment_content_type
    remove_column :trials, :attachment_file_name
  end
end
