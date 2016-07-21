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

ActiveRecord::Schema.define(version: 20160721164815) do

  create_table "newspapers", force: :cascade do |t|
    t.string   "publication"
    t.string   "main_phone"
    t.string   "publisher"
    t.string   "publisher_email"
    t.string   "editor"
    t.string   "editor_email"
    t.string   "sales_manager"
    t.string   "sales_manager_email"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "ownership"
    t.string   "publication_day"
    t.string   "ad_deadline"
    t.string   "electoral_district"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

end
