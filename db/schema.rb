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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160228232614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "list_items", force: :cascade do |t|
    t.integer  "list_id"
    t.integer  "priority",   default: 5
    t.text     "title"
    t.text     "content"
    t.datetime "show_time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "list_items", ["list_id"], name: "index_list_items_on_list_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "code"
    t.integer  "item_count",   default: 1
    t.datetime "last_changed"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "lists", ["code"], name: "index_lists_on_code", using: :btree

  add_foreign_key "list_items", "lists"
end
