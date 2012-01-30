class AddAttachmentToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :attachment_file_name, :string
    add_column :updates, :attachment_content_type, :string
    add_column :updates, :attachment_file_size, :integer
  end

  def self.down
    remove_column :updates, :attachment_file_size
    remove_column :updates, :attachment_content_type
    remove_column :updates, :attachment_file_name
  end
end
