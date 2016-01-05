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

ActiveRecord::Schema.define(version: 20160105204246) do

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.string   "permissions"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id"

  create_table "prayer_requests", force: :cascade do |t|
    t.string   "name"
    t.string   "request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "list_id"
  end

  add_index "prayer_requests", ["list_id"], name: "index_prayer_requests_on_list_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
