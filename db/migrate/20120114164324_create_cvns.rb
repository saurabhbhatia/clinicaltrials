class CreateCvns < ActiveRecord::Migration
  def self.up
    create_table :cvns do |t|
      t.string :title
      t.text :overview
      t.text :description
      t.text :references
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :cvns
  end
end
