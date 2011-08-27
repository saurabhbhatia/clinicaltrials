class CreateTrials < ActiveRecord::Migration
  def self.up
    create_table :trials do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :trials
  end
end
