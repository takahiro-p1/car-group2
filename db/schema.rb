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

ActiveRecord::Schema.define(version: 2021_03_08_045706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.bigint "carlist_id", null: false
    t.bigint "from_user_id"
    t.integer "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carlist_id"], name: "index_actions_on_carlist_id"
    t.index ["from_user_id"], name: "index_actions_on_from_user_id"
  end

  create_table "carlists", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.integer "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "profile_image"
  end

  create_table "chat_messages", force: :cascade do |t|
    t.bigint "carlist_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carlist_id"], name: "index_chat_messages_on_carlist_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.bigint "carlist_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carlist_id"], name: "index_chat_rooms_on_carlist_id"
    t.index ["user_id"], name: "index_chat_rooms_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "carlist_id", null: false
    t.integer "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carlist_id"], name: "index_reactions_on_carlist_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "reacts", force: :cascade do |t|
    t.bigint "to_user_id", null: false
    t.bigint "from_user_id", null: false
    t.integer "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from_user_id"], name: "index_reacts_on_from_user_id"
    t.index ["to_user_id"], name: "index_reacts_on_to_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.string "undergraduate", null: false
    t.integer "grade", null: false
    t.text "self_introduction"
    t.string "profile_image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actions", "carlists"
  add_foreign_key "actions", "users", column: "from_user_id"
  add_foreign_key "chat_messages", "carlists"
  add_foreign_key "chat_messages", "users"
  add_foreign_key "chat_rooms", "carlists"
  add_foreign_key "chat_rooms", "users"
  add_foreign_key "reactions", "carlists"
  add_foreign_key "reactions", "users"
  add_foreign_key "reacts", "users", column: "from_user_id"
  add_foreign_key "reacts", "users", column: "to_user_id"
end
