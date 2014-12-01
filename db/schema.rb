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

ActiveRecord::Schema.define(version: 20141201041234) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.integer  "experience_id"
    t.integer  "user_id"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["experience_id"], name: "index_evaluations_on_experience_id"
  add_index "evaluations", ["user_id"], name: "index_evaluations_on_user_id"

  create_table "experiences", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "javascript"
    t.integer  "subcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["subcategory_id"], name: "index_experiences_on_subcategory_id"

  create_table "password_resets", force: true do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "expires_at"
    t.boolean  "used"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "password_resets", ["user_id"], name: "index_password_resets_on_user_id"

  create_table "subcategories", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role",                 default: "member"
    t.string   "password_digest"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
