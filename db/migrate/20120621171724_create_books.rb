class CreateBooks < ActiveRecord::Migration
  def change
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
