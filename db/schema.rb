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

ActiveRecord::Schema.define(:version => 20130525013626) do

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "full_name"
    t.datetime "birth_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trophies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "points"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "trophies", ["game_id"], :name => "index_trophies_on_game_id"
  add_index "trophies", ["player_id"], :name => "index_trophies_on_player_id"

end
