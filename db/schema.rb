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

ActiveRecord::Schema.define(version: 20141014061345) do

  create_table "drivers", force: true do |t|
    t.string   "license_no",  limit: 32, null: false
    t.string   "name",        limit: 50
    t.datetime "dob"
    t.text     "address"
    t.integer  "contact_no",  limit: 8
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "mnemonic"
    t.string   "name"
    t.string   "email"
    t.string   "oranization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["mnemonic", "email"], name: "index_people_on_mnemonic_and_email", using: :btree

  create_table "person_addresses", force: true do |t|
    t.integer  "person_id"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pincode",    limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_vehicles", force: true do |t|
    t.integer  "person_id"
    t.integer  "vehicle_drivers_id"
    t.integer  "travel_slots_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_slots", force: true do |t|
    t.time     "start_time"
    t.time     "stop_time"
    t.string   "time_slot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_drivers", force: true do |t|
    t.integer  "driver_id"
    t.integer  "vehicle_id"
    t.string   "time_slot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "travel_slot_id"
    t.string   "status"
  end

  create_table "vehicles", force: true do |t|
    t.string   "reg_no",     limit: 32, null: false
    t.string   "country",    limit: 30
    t.integer  "seating"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
