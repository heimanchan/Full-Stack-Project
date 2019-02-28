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

ActiveRecord::Schema.define(version: 2019_02_28_193128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_cities_on_name"
  end

  create_table "spots", force: :cascade do |t|
    t.string "title", null: false #
    t.integer "price", null: false #
    t.integer "max_guests", null: false #
    t.integer "num_beds" #
    t.integer "num_bedrooms" #
    t.text "description", null: false #
    t.string "address", null: false #
    t.float "lng", null: false #
    t.float "lat", null: false #
    t.integer "ratings" #
    t.integer "owner_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "wifi", default: false #
    t.boolean "shampoo", default: false #
    t.boolean "tv", default: false #
    t.boolean "heat", default: false #
    t.boolean "air_conditioning", default: false #
    t.boolean "iron", default: false #
    t.boolean "hair_dryer", default: false
    t.boolean "first_aid", default: false
    t.boolean "pool", default: false #
    t.boolean "laundry", default: false
    t.index ["city_id"], name: "index_spots_on_city_id"
    t.index ["owner_id"], name: "index_spots_on_owner_id"
    t.index ["title"], name: "index_spots_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
