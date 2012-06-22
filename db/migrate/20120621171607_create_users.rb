class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
	  t.string :full_name, :null => true
      t.integer :age
      t.text :description

      t.timestamps
    end
    add_index :users, :user_name, :unique => true
    add_index :users, :email, :unique => true
    add_index :users, [ :user_name, :password ], :name => "username_password_index"
  end
end
