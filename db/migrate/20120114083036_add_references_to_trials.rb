class AddReferencesToTrials < ActiveRecord::Migration
  def self.up
    add_column :trials, :references, :text
  end

  def self.down
    remove_column :trials, :references
  end
end
