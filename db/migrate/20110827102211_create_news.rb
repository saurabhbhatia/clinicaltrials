class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :title
      t.text :overview
      t.text :description
      t.text :references

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
