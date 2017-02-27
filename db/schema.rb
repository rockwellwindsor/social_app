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

ActiveRecord::Schema.define(version: 20170227171432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.text     "content"
    t.integer  "likes_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["post_id"], name: "index_comments_on_post_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "discussions", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.string   "file_name"
    t.string   "document_type"
    t.integer  "user_id"
    t.boolean  "active",         default: false
    t.integer  "privacy_status"
    t.integer  "post_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["post_id"], name: "index_documents_on_post_id", using: :btree
    t.index ["user_id"], name: "index_documents_on_user_id", using: :btree
  end

  create_table "icons", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journey_map_categories", force: :cascade do |t|
    t.string   "title"
    t.string   "color"
    t.string   "icon"
    t.boolean  "active",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "journey_map_tiles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "icon"
    t.boolean  "active",                  default: false
    t.integer  "journey_map_id"
    t.integer  "parent_tile_id"
    t.boolean  "shared",                  default: false
    t.boolean  "locked",                  default: false
    t.string   "color"
    t.integer  "journey_map_category_id"
    t.integer  "user_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["journey_map_category_id"], name: "index_journey_map_tiles_on_journey_map_category_id", using: :btree
    t.index ["journey_map_id"], name: "index_journey_map_tiles_on_journey_map_id", using: :btree
    t.index ["user_id"], name: "index_journey_map_tiles_on_user_id", using: :btree
  end

  create_table "journey_map_tiles_subscriptions", force: :cascade do |t|
    t.integer  "journey_map_tiles_id"
    t.integer  "journey_map_id"
    t.integer  "user_id"
    t.boolean  "completed",            default: false
    t.boolean  "active",               default: false
    t.boolean  "locked",               default: false
    t.integer  "status"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["journey_map_id"], name: "index_journey_map_tiles_subscriptions_on_journey_map_id", using: :btree
    t.index ["journey_map_tiles_id"], name: "index_journey_map_tiles_subscriptions_on_journey_map_tiles_id", using: :btree
    t.index ["user_id"], name: "index_journey_map_tiles_subscriptions_on_user_id", using: :btree
  end

  create_table "journey_maps", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.boolean  "active",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["user_id"], name: "index_journey_maps_on_user_id", using: :btree
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "table_name"
    t.integer  "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.boolean  "active",      default: false
    t.string   "table_name"
    t.integer  "table_id"
    t.text     "description"
    t.string   "thumbnail"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_links_on_user_id", using: :btree
  end

  create_table "map_categories", force: :cascade do |t|
    t.string   "title"
    t.string   "color"
    t.string   "icon"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "map_tiles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "icon"
    t.boolean  "active"
    t.integer  "map_id"
    t.integer  "parent_tile_id"
    t.boolean  "shared"
    t.boolean  "locked"
    t.string   "color"
    t.integer  "map_category_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["map_category_id"], name: "index_map_tiles_on_map_category_id", using: :btree
    t.index ["map_id"], name: "index_map_tiles_on_map_id", using: :btree
    t.index ["user_id"], name: "index_map_tiles_on_user_id", using: :btree
  end

  create_table "map_tiles_subscriptions", force: :cascade do |t|
    t.integer  "map_tiles_id"
    t.integer  "map_id"
    t.integer  "user_id"
    t.boolean  "completed"
    t.boolean  "active"
    t.boolean  "locked"
    t.integer  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["map_id"], name: "index_map_tiles_subscriptions_on_map_id", using: :btree
    t.index ["map_tiles_id"], name: "index_map_tiles_subscriptions_on_map_tiles_id", using: :btree
    t.index ["user_id"], name: "index_map_tiles_subscriptions_on_user_id", using: :btree
  end

  create_table "maps", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_maps_on_user_id", using: :btree
  end

  create_table "mentions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "mentioned_user_name"
    t.string   "title"
    t.integer  "mentioned_user_id"
    t.string   "table_name"
    t.integer  "table_id"
    t.boolean  "active",              default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["user_id"], name: "index_mentions_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "discussion_id"
    t.integer  "user_id"
    t.text     "body"
    t.boolean  "selected",      default: false
    t.boolean  "pinned",        default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["discussion_id"], name: "index_messages_on_discussion_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.boolean  "active"
    t.datetime "last_read"
    t.string   "table_name"
    t.integer  "table_id"
    t.string   "link"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notifications_on_user_id", using: :btree
  end

  create_table "participants", force: :cascade do |t|
    t.integer  "discussion_id"
    t.integer  "user_id"
    t.datetime "last_read"
    t.integer  "window_state"
    t.boolean  "active",        default: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["discussion_id"], name: "index_participants_on_discussion_id", using: :btree
    t.index ["user_id"], name: "index_participants_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "space_id"
    t.integer  "user_id"
    t.integer  "favorited_count"
    t.text     "content"
    t.integer  "likes_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["space_id"], name: "index_posts_on_space_id", using: :btree
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "social_links", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_social_links_on_user_id", using: :btree
  end

  create_table "space_subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "spaces_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spaces_id"], name: "index_space_subscriptions_on_spaces_id", using: :btree
    t.index ["user_id"], name: "index_space_subscriptions_on_user_id", using: :btree
  end

  create_table "space_types", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.string   "icon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_space_types_on_user_id", using: :btree
  end

  create_table "spaces", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.integer  "space_type_id"
    t.string   "icon"
    t.boolean  "isPublic",      default: false
    t.boolean  "isPrivate",     default: false
    t.boolean  "active",        default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["space_type_id"], name: "index_spaces_on_space_type_id", using: :btree
    t.index ["user_id"], name: "index_spaces_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "biography"
    t.text     "hobbies"
    t.boolean  "is_online"
    t.string   "avatar"
    t.string   "title"
    t.string   "department"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "documents", "posts"
  add_foreign_key "documents", "users"
  add_foreign_key "journey_map_tiles", "journey_map_categories"
  add_foreign_key "journey_map_tiles", "journey_maps"
  add_foreign_key "journey_map_tiles", "users"
  add_foreign_key "journey_map_tiles_subscriptions", "journey_map_tiles", column: "journey_map_tiles_id"
  add_foreign_key "journey_map_tiles_subscriptions", "journey_maps"
  add_foreign_key "journey_map_tiles_subscriptions", "users"
  add_foreign_key "journey_maps", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "links", "users"
  add_foreign_key "map_tiles", "map_categories"
  add_foreign_key "map_tiles", "maps"
  add_foreign_key "map_tiles", "users"
  add_foreign_key "map_tiles_subscriptions", "map_tiles", column: "map_tiles_id"
  add_foreign_key "map_tiles_subscriptions", "maps"
  add_foreign_key "map_tiles_subscriptions", "users"
  add_foreign_key "maps", "users"
  add_foreign_key "mentions", "users"
  add_foreign_key "messages", "discussions"
  add_foreign_key "messages", "users"
  add_foreign_key "notes", "users"
  add_foreign_key "notifications", "users"
  add_foreign_key "participants", "discussions"
  add_foreign_key "participants", "users"
  add_foreign_key "posts", "spaces"
  add_foreign_key "posts", "users"
  add_foreign_key "social_links", "users"
  add_foreign_key "space_subscriptions", "spaces", column: "spaces_id"
  add_foreign_key "space_subscriptions", "users"
  add_foreign_key "space_types", "users"
  add_foreign_key "spaces", "users"
end
