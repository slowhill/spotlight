class Changeusersupdown < ActiveRecord::Migration
  def self.up
  	rename_table :users, :user
  end

  def self.down
  	rename_table :user, :users
  end
end
