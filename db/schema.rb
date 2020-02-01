# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170523110024) do

  create_table "catalogs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "group_id",    limit: 4
    t.integer  "price_old",   limit: 4
    t.integer  "price_new",   limit: 4
    t.boolean  "special"
    t.boolean  "gift"
    t.boolean  "stake"
    t.boolean  "barbecue"
    t.boolean  "set"
  end

  add_index "catalogs", ["group_id"], name: "index_catalogs_on_group_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "phone",       limit: 255
    t.string   "email",       limit: 255
    t.string   "image_uid",   limit: 255
    t.string   "description", limit: 255
    t.text     "slave",       limit: 65535
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "facts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "average",     limit: 255
    t.boolean  "master"
  end

  create_table "infos", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "group",       limit: 255
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.integer  "price_old",   limit: 4
    t.integer  "price_new",   limit: 4
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "group_id",    limit: 4
    t.boolean  "special",                   default: false
    t.boolean  "gift",                      default: false
    t.boolean  "stake"
    t.boolean  "barbecue"
    t.boolean  "set"
  end

  add_index "products", ["group_id"], name: "index_products_on_group_id", using: :btree

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name",    limit: 255
    t.string   "rich_file_content_type", limit: 255
    t.integer  "rich_file_file_size",    limit: 4
    t.datetime "rich_file_updated_at"
    t.string   "owner_type",             limit: 255
    t.integer  "owner_id",               limit: 4
    t.text     "uri_cache",              limit: 65535
    t.string   "simplified_type",        limit: 255,   default: "file"
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "specials", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "finish"
    t.boolean  "super"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "slave",       limit: 65535
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.integer  "sort",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
