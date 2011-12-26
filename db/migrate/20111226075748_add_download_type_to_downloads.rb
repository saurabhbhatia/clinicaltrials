class AddDownloadTypeToDownloads < ActiveRecord::Migration
  def self.up
    add_column :downloads, :download_type, :string
  end

  def self.down
    remove_column :downloads, :download_type
  end
end
