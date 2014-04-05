class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :phone
      t.string :twitter
      t.string :facebook
      t.string :email
      t.string :website
      t.string :description
      t.boolean :live
      t.integer :user_id

      t.timestamps
    end
  end
end
