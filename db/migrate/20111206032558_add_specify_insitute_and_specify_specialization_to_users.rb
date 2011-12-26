class AddSpecifyInsituteAndSpecifySpecializationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :specify_institute, :string, :default =>"N/A"
    add_column :users, :specify_specialization, :string, :default =>"N/A"
    add_column :users, :specify_degree, :string, :default =>"N/A"
  end

  def self.down
    remove_column :users, :specify_specialization
    remove_column :users, :specify_institute
    remove_column :users, :specify_degree
  end
end
