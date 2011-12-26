class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table :downloads do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :downloads
  end
end
