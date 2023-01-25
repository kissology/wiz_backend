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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_232046) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "restroom_id", null: false
    t.integer "cleanliness"
    t.boolean "changing_table"
    t.boolean "handicap_accessable"
    t.boolean "gender_neutral"
    t.boolean "feminine_products"
    t.boolean "mirror"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restroom_id"], name: "index_ratings_on_restroom_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "restrooms", force: :cascade do |t|
    t.string "address"
    t.string "burough"
    t.integer "distance_from_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ratings", "restrooms"
  add_foreign_key "ratings", "users"
end
