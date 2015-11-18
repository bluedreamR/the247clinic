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

ActiveRecord::Schema.define(version: 20151119042343) do

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "mspnum"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.boolean  "admin",             default: false
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "country"
    t.string   "provincestate"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "user_type"
  end

  create_table "video_sessions", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "symptom"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.text     "message"
    t.text     "callback"
    t.text     "feedback"
    t.text     "notes"
    t.integer  "doctor_id"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
