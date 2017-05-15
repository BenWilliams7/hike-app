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

ActiveRecord::Schema.define(version: 20170515184312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features_hikes", force: :cascade do |t|
    t.integer "hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "feature_id"
  end

  create_table "hike_ratings", force: :cascade do |t|
    t.integer "hike_id"
    t.integer "rating_id"
    t.string "description"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "name"
    t.string "latitude"
    t.string "longitude"
    t.string "description"
    t.integer "rating_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "distance"
    t.string "elevation"
  end

  create_table "hikes_landmarks", force: :cascade do |t|
    t.integer "hike_id"
    t.integer "landmark_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landmarks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating_num"
    t.string "description"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end