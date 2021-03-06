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

ActiveRecord::Schema.define(version: 20161018194626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "suspects", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "img_url"
    t.string   "race"
    t.string   "gender"
    t.string   "height"
    t.integer  "weight"
    t.string   "hair"
    t.text     "clothing"
    t.text     "weapons"
    t.boolean  "vehicle",     default: false
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "color"
    t.string   "license"
    t.string   "state"
    t.text     "description"
    t.integer  "tip_id",                      null: false
    t.index ["tip_id"], name: "index_suspects_on_tip_id", using: :btree
  end

  create_table "tips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "offense",    null: false
    t.string   "location",   null: false
    t.string   "img_url"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_tips_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "tips", "users"
end
