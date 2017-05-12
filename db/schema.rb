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

ActiveRecord::Schema.define(version: 20170512145836) do

  create_table "catalogs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "group_id"
    t.integer  "price_old"
    t.integer  "price_new"
    t.boolean  "special"
    t.boolean  "gift"
    t.boolean  "stake"
    t.boolean  "barbecue"
    t.boolean  "set"
  end

  add_index "catalogs", ["group_id"], name: "index_catalogs_on_group_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "image_uid"
    t.string   "description"
    t.text     "slave"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "average"
    t.boolean  "master"
  end

  create_table "infos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "group"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.integer  "price_old"
    t.integer  "price_new"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "group_id"
    t.boolean  "special",     default: false
    t.boolean  "gift",        default: false
    t.boolean  "stake"
    t.boolean  "barbecue"
    t.boolean  "set"
  end

  add_index "products", ["group_id"], name: "index_products_on_group_id"

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specials", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "finish"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
