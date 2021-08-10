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

ActiveRecord::Schema.define(version: 2021_08_10_222535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disciplines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "reason", null: false
    t.date "action", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_disciplines_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results", force: :cascade do |t|
    t.bigint "schedule_id", null: false
    t.bigint "female_player_id", null: false
    t.bigint "male_player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["female_player_id"], name: "index_results_on_female_player_id"
    t.index ["male_player_id"], name: "index_results_on_male_player_id"
    t.index ["schedule_id"], name: "index_results_on_schedule_id"
  end

  create_table "role_resources", force: :cascade do |t|
    t.bigint "resource_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_role_resources_on_resource_id"
    t.index ["role_id"], name: "index_role_resources_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "season", null: false
    t.string "game_date", null: false
    t.string "game_time", null: false
    t.bigint "home_team_id", null: false
    t.bigint "away_team_id", null: false
    t.string "field", null: false
    t.boolean "holiday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_team_id"], name: "index_schedules_on_away_team_id"
    t.index ["home_team_id"], name: "index_schedules_on_home_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.integer "team_id"
    t.string "winter_team"
    t.string "public_sector"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "disciplines", "users"
  add_foreign_key "results", "schedules"
  add_foreign_key "results", "users", column: "female_player_id"
  add_foreign_key "results", "users", column: "male_player_id"
  add_foreign_key "role_resources", "resources"
  add_foreign_key "role_resources", "roles"
  add_foreign_key "schedules", "teams", column: "away_team_id"
  add_foreign_key "schedules", "teams", column: "home_team_id"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
