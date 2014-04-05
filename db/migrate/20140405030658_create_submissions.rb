class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :episode_id
      t.integer :upvotes
      t.integer :status
      t.string  :description
      t.string  :type
      t.integer :submitted
      t.integer :responded

      t.timestamps
    end
    change_column :submissions, :status, :integer, :default => 0
  end
end
