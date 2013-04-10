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

ActiveRecord::Schema.define(:version => 20130410002709) do

  create_table "comment_votes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "comment_id"
  end

  add_index "comment_votes", ["post_id"], :name => "index_comment_votes_on_post_id"
  add_index "comment_votes", ["user_id"], :name => "index_comment_votes_on_user_id"

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "parent_id"
    t.integer  "post_id"
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email_address"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "emails", ["user_id"], :name => "index_emails_on_user_id"

  create_table "post_votes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "post_votes", ["post_id"], :name => "index_post_votes_on_post_id"
  add_index "post_votes", ["user_id"], :name => "index_post_votes_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "save_stories", :force => true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "save_stories", ["post_id"], :name => "index_save_stories_on_post_id"
  add_index "save_stories", ["user_id"], :name => "index_save_stories_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.text     "about"
    t.integer  "show_dead"
    t.integer  "no_procast"
    t.integer  "max_visit"
    t.integer  "min_away"
    t.integer  "delay"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
  end

end
