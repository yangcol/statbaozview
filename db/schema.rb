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

ActiveRecord::Schema.define(version: 20150212054331) do

  create_table "data", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.string   "duration",   limit: 255
    t.datetime "date"
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "extdata", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.string   "duration",   limit: 255
    t.date     "date"
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "servermeans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.datetime "date"
    t.string   "duration",   limit: 255
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "serverpvs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.datetime "date"
    t.string   "duration",   limit: 255
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "slowlogexts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.string   "duration",   limit: 255
    t.datetime "date"
    t.text     "value",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "slowlogs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "key",        limit: 255
    t.string   "duration",   limit: 255
    t.datetime "date"
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "statdata", id: false, force: :cascade do |t|
    t.string   "name",     limit: 32,  null: false
    t.string   "key",      limit: 128, null: false
    t.string   "duration", limit: 32,  null: false
    t.datetime "date",                 null: false
    t.integer  "value",    limit: 4
  end

  create_table "statextdata", id: false, force: :cascade do |t|
    t.string   "name",     limit: 32,       null: false
    t.string   "key",      limit: 128,      null: false
    t.string   "duration", limit: 32,       null: false
    t.datetime "date",                      null: false
    t.text     "value",    limit: 16777215
  end

  create_table "textd", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "age",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
