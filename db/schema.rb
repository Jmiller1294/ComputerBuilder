# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_12_063234) do

  create_table "computers", force: :cascade do |t|
    t.string "operating_system"
    t.string "cpu"
    t.string "ram"
    t.string "gpu"
    t.string "motherboard_type"
    t.string "cooling_type"
    t.string "case_size"
    t.integer "user_id"
    t.integer "order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_computers_on_order_id"
    t.index ["user_id"], name: "index_computers_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.string "shipping_type"
    t.text "shipping_address"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "computers", "orders"
  add_foreign_key "computers", "users"
  add_foreign_key "orders", "users"
end
