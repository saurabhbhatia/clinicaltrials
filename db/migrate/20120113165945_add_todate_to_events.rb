class AddTodateToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :todate, :date
  end

  def self.down
    remove_column :events, :todate
  end
end
