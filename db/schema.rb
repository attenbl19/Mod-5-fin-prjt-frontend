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

ActiveRecord::Schema.define(version: 2020_12_03_000251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_kinds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pet_care_business_id"
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_care_business_id"], name: "index_animal_kinds_on_pet_care_business_id"
    t.index ["user_id"], name: "index_animal_kinds_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "pet_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offered_services", force: :cascade do |t|
    t.bigint "catergories_id"
    t.bigint "pet_care_businesses_id"
    t.string "service_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["catergories_id"], name: "index_offered_services_on_catergories_id"
    t.index ["pet_care_businesses_id"], name: "index_offered_services_on_pet_care_businesses_id"
  end

  create_table "pet_care_businesses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "image"
  end

  create_table "pet_types", force: :cascade do |t|
    t.string "kind"
    t.bigint "shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_pet_types_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "summary"
    t.string "number"
    t.string "website"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pet_types", "shops"
end
