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

ActiveRecord::Schema.define(version: 20160120214529) do

  create_table "appointments", force: true do |t|
    t.text     "reminder"
    t.text     "reason"
    t.integer  "cust_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["cust_id"], name: "index_appointments_on_cust_id"
  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"

  create_table "appoints", force: true do |t|
    t.string   "reminder"
    t.string   "reason"
    t.datetime "past_visit"
    t.integer  "custm_id"
    t.integer  "doctor_id"
    t.integer  "pet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appoints", ["custm_id"], name: "index_appoints_on_custm_id"
  add_index "appoints", ["doctor_id"], name: "index_appoints_on_doctor_id"
  add_index "appoints", ["pet_id"], name: "index_appoints_on_pet_id"

  create_table "custms", force: true do |t|
    t.string   "name"
    t.string   "pets_name"
    t.datetime "next_appointment"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custs", force: true do |t|
    t.string   "name"
    t.string   "pets_name"
    t.datetime "date_of_next_appointment"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "school"
    t.string   "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "pets_name"
    t.string   "age"
    t.string   "breed"
    t.string   "weight"
    t.datetime "last_visit"
    t.integer  "cust_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pets", ["cust_id"], name: "index_pets_on_cust_id"

  create_table "typeofpets", force: true do |t|
    t.string   "name"
    t.integer  "pet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "typeofpets", ["pet_id"], name: "index_typeofpets_on_pet_id"

end
