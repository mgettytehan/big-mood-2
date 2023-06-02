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

ActiveRecord::Schema[7.0].define(version: 2023_06_02_145350) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mood_logs", force: :cascade do |t|
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mood_logs_scale_items", id: false, force: :cascade do |t|
    t.bigint "mood_logs_id", null: false
    t.bigint "scale_items_id", null: false
    t.index ["mood_logs_id"], name: "index_mood_logs_scale_items_on_mood_logs_id"
    t.index ["scale_items_id"], name: "index_mood_logs_scale_items_on_scale_items_id"
  end

  create_table "moodscales", force: :cascade do |t|
    t.string "name", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scale_items", force: :cascade do |t|
    t.integer "index", null: false
    t.string "alias", null: false
    t.bigint "moodscale_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moodscale_id"], name: "index_scale_items_on_moodscale_id"
  end

  add_foreign_key "mood_logs_scale_items", "mood_logs", column: "mood_logs_id"
  add_foreign_key "mood_logs_scale_items", "scale_items", column: "scale_items_id"
  add_foreign_key "scale_items", "moodscales"
end
