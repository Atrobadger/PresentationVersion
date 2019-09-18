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

ActiveRecord::Schema.define(version: 20190916161018) do

  create_table "preferences", force: :cascade do |t|
    t.integer "cashier"
    t.integer "stockhandler"
    t.integer "dairy"
    t.integer "deli"
    t.integer "baker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "userid"
    t.string "skillname"
    t.integer "skillid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "userid"
    t.integer "starttime"
    t.integer "endtime"
    t.integer "shiftlength"
    t.integer "storeid"
    t.boolean "ispublic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "password"
    t.string "phonenumber"
    t.string "emailaddress"
    t.boolean "ismanager"
    t.boolean "isactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
