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

ActiveRecord::Schema.define(version: 2019_05_08_153658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_ids", default: [], array: true
    t.string "image_type", default: "0"
    t.integer "section1_image_ids", default: [], array: true
    t.integer "section2_image_ids", default: [], array: true
    t.integer "section3_image_ids", default: [], array: true
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "foods", force: :cascade do |t|
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_ids", default: [], array: true
    t.integer "food_type", default: 0
    t.string "type"
    t.string "title"
    t.string "subtitle"
    t.string "desc"
    t.integer "sort"
    t.integer "seq"
  end

  create_table "images", force: :cascade do |t|
    t.string "src"
    t.integer "crop_x"
    t.integer "crop_y"
    t.integer "crop_w"
    t.integer "crop_h"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobility_string_translations", force: :cascade do |t|
    t.string "locale", null: false
    t.string "key", null: false
    t.string "value"
    t.string "translatable_type"
    t.bigint "translatable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_string_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_string_translations_on_keys", unique: true
    t.index ["translatable_type", "key", "value", "locale"], name: "index_mobility_string_translations_on_query_keys"
  end

  create_table "mobility_text_translations", force: :cascade do |t|
    t.string "locale", null: false
    t.string "key", null: false
    t.text "value"
    t.string "translatable_type"
    t.bigint "translatable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_text_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_text_translations_on_keys", unique: true
  end

  create_table "news", force: :cascade do |t|
    t.date "public_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_ids", default: [], array: true
    t.boolean "top", default: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "title"
    t.integer "seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_en"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "cover"
    t.integer "seq"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "desc"
    t.string "equipment"
    t.string "spec"
    t.integer "image_ids", default: [], array: true
    t.string "hash_data", default: ""
    t.integer "cover_image_ids", default: [], array: true
  end

  create_table "settings", force: :cascade do |t|
    t.string "hash_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "og_image"
  end

  create_table "spots", force: :cascade do |t|
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_ids", default: [], array: true
    t.integer "store_id"
    t.string "tags", default: [], array: true
  end

  create_table "store_spots", force: :cascade do |t|
    t.integer "store_id"
    t.integer "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "region_id"
    t.integer "seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "display", default: true
    t.integer "cover_image_ids", default: [], array: true
    t.integer "traffic_image_ids", default: [], array: true
    t.index ["region_id"], name: "index_stores_on_region_id"
  end

  create_table "traffics", force: :cascade do |t|
    t.integer "store_id"
    t.integer "seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 2
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "stores", "regions"
end
