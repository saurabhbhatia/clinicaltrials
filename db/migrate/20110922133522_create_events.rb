class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :topic
      t.date :date
      t.string :organization
      t.text :more_info
      t.text :location

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
