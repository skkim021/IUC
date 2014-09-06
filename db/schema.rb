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

ActiveRecord::Schema.define(version: 20140905230432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
