# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_14_205531) do

  create_table "appointments", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "shop_id", null: false
    t.integer "total_price"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_appointments_on_car_id"
    t.index ["shop_id"], name: "index_appointments_on_shop_id"
  end

  create_table "car_locations", force: :cascade do |t|
    t.integer "location_id", null: false
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_locations_on_car_id"
    t.index ["location_id"], name: "index_car_locations_on_location_id"
  end

  create_table "cars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "year"
    t.string "make"
    t.string "model"
    t.boolean "insurance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_lists", force: :cascade do |t|
    t.integer "appointment_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_service_lists_on_appointment_id"
    t.index ["service_id"], name: "index_service_lists_on_service_id"
  end

  create_table "service_tags", force: :cascade do |t|
    t.string "service_name"
    t.integer "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_service_tags_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shop_services", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "shop_id", null: false
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_shop_services_on_service_id"
    t.index ["shop_id"], name: "index_shop_services_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_shops_on_location_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.integer "location_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "cars"
  add_foreign_key "appointments", "shops"
  add_foreign_key "car_locations", "cars"
  add_foreign_key "car_locations", "locations"
  add_foreign_key "cars", "users"
  add_foreign_key "service_lists", "appointments"
  add_foreign_key "service_lists", "services"
  add_foreign_key "service_tags", "services"
  add_foreign_key "shop_services", "services"
  add_foreign_key "shop_services", "shops"
  add_foreign_key "shops", "locations"
  add_foreign_key "user_locations", "locations"
  add_foreign_key "user_locations", "users"
end
