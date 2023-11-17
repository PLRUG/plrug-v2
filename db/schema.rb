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

ActiveRecord::Schema[7.0].define(version: 2023_11_13_192013) do
  create_table "billing_types", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "capital", default: false
    t.integer "country_id", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbrv"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.text "description"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_kinds", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_levels", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "job_kind_id"
    t.integer "city_id"
    t.boolean "remote", default: false
    t.float "min_amount"
    t.float "max_amount"
    t.string "currency_id"
    t.integer "billing_type_id"
    t.string "apply_path"
    t.integer "views", default: 0
    t.integer "visits", default: 0
    t.integer "clicks", default: 0
    t.integer "status"
    t.integer "renew_counter", default: 0
    t.string "slug"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "address"
    t.integer "country_id", null: false
    t.string "zip_code"
    t.integer "job_level_id", null: false
    t.index ["country_id"], name: "index_jobs_on_country_id"
    t.index ["job_level_id"], name: "index_jobs_on_job_level_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.boolean "status", default: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "logo"
    t.string "name"
    t.integer "kind"
    t.string "url_path"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["user_id"], name: "index_partners_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "thumbnail"
    t.string "title"
    t.text "body"
    t.string "slug"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
    t.integer "views", default: 0
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "talks", force: :cascade do |t|
    t.string "title"
    t.text "about"
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "speaker_name"
    t.string "youtube_url"
    t.string "github_source_link"
    t.index ["event_id"], name: "index_talks_on_event_id"
    t.index ["user_id"], name: "index_talks_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "talk_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talk_id"], name: "index_topics_on_talk_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "name"
    t.string "referral_link"
    t.integer "kind", default: 0
    t.boolean "admin", default: false
    t.string "slug"
    t.string "username"
    t.integer "country_id", null: false
    t.integer "city_id", null: false
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "address"
    t.string "zip_code"
    t.text "about"
    t.string "provider"
    t.string "uid"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "talk_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talk_id"], name: "index_votes_on_talk_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "events", "users"
  add_foreign_key "jobs", "countries"
  add_foreign_key "jobs", "job_levels"
  add_foreign_key "jobs", "users"
  add_foreign_key "partners", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "talks", "events"
  add_foreign_key "talks", "users"
  add_foreign_key "topics", "talks"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "countries"
  add_foreign_key "votes", "talks"
  add_foreign_key "votes", "users"
end
