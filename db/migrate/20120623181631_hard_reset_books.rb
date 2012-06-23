class HardResetBooks < ActiveRecord::Migration
  def up
  drop_table :books

  create_table "books", :force => true do |t|
    t.string   "author"
    t.string   "title"
    t.text     "description"
    t.decimal  "isbn",            :precision => 10, :scale => 0
    t.decimal  "price",            :precision => 6, :scale => 2
    t.integer  "condition"
    t.integer   "user_id",        :null => false

    t.timestamps
  end

  add_index :books, :author
  add_index :books, :title
  add_index :books, :user_id
  end

  def down
    drop_table :books

    create_table :books do |t| 
      t.string :author
      t.string :title
      t.text :description
      t.integer :isbn

      t.timestamps
    end 
    add_index :books, :author
    add_index :books, :title
    add_index :books, :isbn

  end
end
