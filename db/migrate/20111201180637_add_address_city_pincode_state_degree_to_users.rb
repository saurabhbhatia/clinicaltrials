class AddAddressCityPincodeStateDegreeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :address, :text
    add_column :users, :city, :string
    add_column :users, :pincode, :string
    add_column :users, :state, :string
    add_column :users, :degree, :string
  end

  def self.down
    remove_column :users, :degree
    remove_column :users, :state
    remove_column :users, :pincode
    remove_column :users, :city
    remove_column :users, :address
  end
end
