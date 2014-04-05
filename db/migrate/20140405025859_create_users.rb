class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string, :fname
      t.string, :lname
      t.string, :email
      t.string, :username
      t.varchar(3000) :password

      t.timestamps
    end
  end
end
