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

ActiveRecord::Schema.define(version: 20150701231528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text     "image_url"
    t.text     "title"
    t.text     "subtitle"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "vertical"
    t.boolean  "is_cover_story"
    t.string   "slug"
    t.datetime "publish_date"
  end

  create_table "editors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "editors", ["email"], name: "index_editors_on_email", unique: true, using: :btree
  add_index "editors", ["reset_password_token"], name: "index_editors_on_reset_password_token", unique: true, using: :btree

  create_table "sections", force: :cascade do |t|
    t.integer  "position"
    t.boolean  "has_image"
    t.text     "image_url"
    t.text     "body"
    t.text     "header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "article_id"
  end

end
