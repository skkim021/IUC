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

ActiveRecord::Schema.define(version: 20140906224212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
    t.integer  "student_id"
  end

  add_index "matches", ["school_id"], name: "index_matches_on_school_id", using: :btree
  add_index "matches", ["student_id"], name: "index_matches_on_student_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "location"
    t.string   "tips"
    t.string   "tuition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "user_type"
    t.string   "student_type"
    t.string   "mail_pref"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "major"
    t.string   "semester"
    t.string   "test_type"
    t.string   "test_score"
    t.float    "gpa"
    t.string   "gtest_type"
    t.string   "gtest_score"
    t.string   "work_exp"
    t.string   "state1"
    t.string   "city1"
    t.string   "state2"
    t.string   "city2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
