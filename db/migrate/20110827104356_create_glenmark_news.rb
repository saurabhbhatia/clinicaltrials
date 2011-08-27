class CreateGlenmarkNews < ActiveRecord::Migration
  def self.up
    create_table :glenmark_news do |t|
      t.string :title
      t.text :overview
      t.text :description
      t.text :references

      t.timestamps
    end
  end

  def self.down
    drop_table :glenmark_news
  end
end
