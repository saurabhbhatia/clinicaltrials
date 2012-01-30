class CreateUsefulLinks < ActiveRecord::Migration
  def self.up
    create_table :useful_links do |t|
      t.text :links

      t.timestamps
    end
  end

  def self.down
    drop_table :useful_links
  end
end
