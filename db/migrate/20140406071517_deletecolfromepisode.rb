class Deletecolfromepisode < ActiveRecord::Migration
  def change
  	remove_column :episodes, :default, :string
  	remove_column :episodes, :false, :string
	change_column :episodes, :upvote_type, :boolean
  end
end