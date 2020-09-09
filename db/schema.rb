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

ActiveRecord::Schema.define(version: 2020_09_09_021608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "phrases", force: :cascade do |t|
    t.string "expression"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_phrases", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "phrase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phrase_id"], name: "index_section_phrases_on_phrase_id"
    t.index ["section_id"], name: "index_section_phrases_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_user_sections_on_section_id"
    t.index ["user_id"], name: "index_user_sections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "password"
    t.integer "speed"
    t.integer "pitch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "section_phrases", "phrases"
  add_foreign_key "section_phrases", "sections"
  add_foreign_key "user_sections", "sections"
  add_foreign_key "user_sections", "users"
end
