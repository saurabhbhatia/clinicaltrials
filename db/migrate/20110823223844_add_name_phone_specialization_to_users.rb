class AddNamePhoneSpecializationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :phone, :integer
    add_column :users, :specialization, :string
  end

  def self.down
    remove_column :users, :specialization
    remove_column :users, :phone
    remove_column :users, :name
  end
end
