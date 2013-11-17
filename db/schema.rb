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

ActiveRecord::Schema.define(:version => 20130610144256) do

  create_table "comments", :force => true do |t|
    t.integer  "song_id"
    t.string   "username"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "post_id"
    t.string   "c_type"
  end

  add_index "comments", ["song_id"], :name => "index_comments_on_song_id"

  create_table "gigs", :force => true do |t|
    t.text     "date"
    t.text     "venue"
    t.text     "description"
    t.text     "directions"
    t.text     "time"
    t.text     "venue_image"
    t.string   "venue_link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "username"
    t.string   "title"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "chords"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "performers"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "preferred_contact_channel"
    t.text     "private_bio"
    t.text     "public_bio"
    t.boolean  "display_public"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "phone"
    t.string   "instruments"
    t.boolean  "vocals"
  end

end
