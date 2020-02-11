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

ActiveRecord::Schema.define(version: 2020_02_10_124839) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "size_id"
    t.integer "condition_id"
    t.integer "shippingcharge_id"
    t.integer "daystoship_id"
    t.string "title", null: false
    t.text "description"
    t.integer "price", null: false
    t.float "feerate", null: false
    t.integer "profit_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "shippings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name_kana", default: "", null: false
    t.string "last_name_kana", default: "", null: false
    t.string "postal_number", default: "", null: false
    t.string "address_city", default: "", null: false
    t.string "address_number", default: "", null: false
    t.string "address_building", default: "", null: false
    t.string "telephone_number", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shippings_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", default: "", null: false
    t.string "firstname", default: "", null: false
    t.string "lastname", default: "", null: false
    t.string "firstnamekana", default: "", null: false
    t.string "lastnamekana", default: "", null: false
    t.date "birthday", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "first_name_kana", default: ""
    t.string "last_name_kana", default: ""
    t.string "postal_number", default: ""
    t.integer "area_id"
    t.string "address_city", default: ""
    t.string "address_number", default: ""
    t.string "address_building", default: ""
    t.string "telephone_number", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "items", "users"
  add_foreign_key "shippings", "users"
end
