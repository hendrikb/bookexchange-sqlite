# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120623113555) do

  create_table "books", :force => true do |t|
    t.string   "author"
    t.string   "title"
    t.text     "description"
    t.decimal  "isbn",        :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "books", ["author"], :name => "index_books_on_author"
  add_index "books", ["isbn"], :name => "index_books_on_isbn"
  add_index "books", ["title"], :name => "index_books_on_title"

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "full_name"
    t.integer  "age"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["user_name", "password_digest"], :name => "username_password_index"
  add_index "users", ["user_name"], :name => "index_users_on_user_name", :unique => true

end
