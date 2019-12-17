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

ActiveRecord::Schema.define(version: 2019_12_17_144757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "trainee_trainers", force: :cascade do |t|
    t.bigint "trainee_id"
    t.bigint "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainee_id"], name: "index_trainee_trainers_on_trainee_id"
    t.index ["trainer_id"], name: "index_trainee_trainers_on_trainer_id"
  end

  create_table "trainees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "areas_of_expertise", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name", null: false
    t.integer "total_duration", default: 0, null: false
    t.integer "state", default: 0
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_workouts_on_creator_id"
  end

  add_foreign_key "trainee_trainers", "trainees"
  add_foreign_key "trainee_trainers", "trainers"
  add_foreign_key "workouts", "trainers", column: "creator_id"
end
