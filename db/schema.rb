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

ActiveRecord::Schema.define(version: 2019_08_04_124836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_companies", force: :cascade do |t|
    t.string "name"
    t.text "intro"
    t.text "concept"
    t.text "opening"
    t.text "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: false
  end

  create_table "admin_jobs", force: :cascade do |t|
    t.bigint "admin_company_id"
    t.string "name"
    t.boolean "enabled", default: false
    t.text "intro"
    t.text "condition"
    t.text "welfare"
    t.text "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_company_id"], name: "index_admin_jobs_on_admin_company_id"
  end

  add_foreign_key "admin_jobs", "admin_companies"
end
