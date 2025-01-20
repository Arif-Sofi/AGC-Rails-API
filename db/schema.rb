# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_20_120954) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emotions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenes", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "emotion_id", null: false
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_scenes_on_anime_id"
    t.index ["character_id"], name: "index_scenes_on_character_id"
    t.index ["emotion_id"], name: "index_scenes_on_emotion_id"
  end

  add_foreign_key "scenes", "animes"
  add_foreign_key "scenes", "characters"
  add_foreign_key "scenes", "emotions"
end
