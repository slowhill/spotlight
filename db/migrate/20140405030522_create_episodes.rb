class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :podcast_id
      t.string :stream_url
      t.integer :duration
      t.string :title
      t.string :description
      t.boolean :upvote_type
      t.string :default
      t.string :false

      t.timestamps
    end
  end
end
