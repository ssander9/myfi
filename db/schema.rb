# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_09_134254) do

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "state"
    t.integer "salary"
    t.integer "bonus"
    t.decimal "salary_pct"
    t.decimal "bonus_pct"
    t.decimal "emp_spon_pct"
    t.decimal "emp_match_pct"
    t.integer "health_pmt"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "job"
    t.string "goal"
    t.string "budget"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_scenarios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "jobs", "users"
  add_foreign_key "scenarios", "users"
end
