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

ActiveRecord::Schema.define(version: 2019_07_03_081233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "total_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pull_request_comments", force: :cascade do |t|
    t.string "pull_request_url"
    t.string "body"
    t.string "user"
    t.bigint "developer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_pull_request_comments_on_developer_id"
  end

  create_table "pull_request_reviews", force: :cascade do |t|
    t.string "pull_request_url"
    t.string "body"
    t.string "user"
    t.bigint "developer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_pull_request_reviews_on_developer_id"
  end

  create_table "pull_requests", force: :cascade do |t|
    t.string "pull_request_url"
    t.string "body"
    t.string "user"
    t.bigint "developer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_pull_requests_on_developer_id"
  end

  add_foreign_key "pull_request_comments", "developers"
  add_foreign_key "pull_request_reviews", "developers"
  add_foreign_key "pull_requests", "developers"
end
