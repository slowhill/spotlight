class Upvotethreshold < ActiveRecord::Migration
  def change
  	add_column :episodes, :min_upvotes, :float
  end
end
