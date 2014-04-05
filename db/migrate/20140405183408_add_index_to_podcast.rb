class AddIndexToPodcast < ActiveRecord::Migration
  def change
  	add_index :podcasts, [:user_id]
  end
end
