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

ActiveRecord::Schema.define(version: 20130725212715) do

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "street_address"
    t.date     "admit_date"
    t.date     "discharge_date"
    t.integer  "zip"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "insurance"
    t.integer  "insurance_policy"
  end

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "office"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procedures", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "cost"
    t.integer  "time"
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "number"
    t.string   "bed"
    t.string   "privacy"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
