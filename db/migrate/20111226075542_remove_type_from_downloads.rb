class RemoveTypeFromDownloads < ActiveRecord::Migration
  def self.up
    remove_column :downloads, :type
  end

  def self.down
    add_column :downloads, :type, :string
  end
end
