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

ActiveRecord::Schema.define(version: 20180407231523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "title"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_character_classes_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "weight"
    t.integer "age"
    t.string "eye_color"
    t.string "skin_color"
    t.string "hair_color"
    t.integer "max_hit_points"
    t.integer "ac"
    t.integer "xp"
    t.integer "speed"
    t.integer "passive_perception"
    t.integer "initiative"
    t.string "alignment"
    t.bigint "character_class_id"
    t.bigint "race_id"
    t.bigint "user_id"
    t.index ["character_class_id"], name: "index_characters_on_character_class_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "title"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_races_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  add_foreign_key "character_classes", "characters"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
  add_foreign_key "races", "characters"
end
