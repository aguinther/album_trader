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

ActiveRecord::Schema.define(version: 20141217035937) do

  create_table "album_listings", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.integer  "release_year"
    t.float    "price"
    t.string   "condition"
    t.string   "type"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "album_listings", ["buyer_id"], name: "index_album_listings_on_buyer_id"
  add_index "album_listings", ["seller_id"], name: "index_album_listings_on_seller_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mailing_address"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
