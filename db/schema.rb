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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140423174820) do

  create_table "emails", :force => true do |t|
    t.integer  "request_id"
    t.text     "content"
    t.string   "to_addresses"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "subject"
  end

  create_table "requests", :force => true do |t|
    t.integer  "requestor_id"
    t.integer  "angel_id"
    t.integer  "sockmonkey_id"
    t.boolean  "obo"
    t.boolean  "anon_req"
    t.boolean  "anon_angel"
    t.string   "ship_address"
    t.string   "ship_city"
    t.string   "ship_state"
    t.string   "ship_zipcode"
    t.text     "story"
    t.string   "external_url"
    t.string   "before_photo_url"
    t.string   "after_photo_url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "avatar"
    t.string   "obo_fname"
    t.string   "obo_lname"
    t.boolean  "agree_to_terms"
  end

  create_table "sockmonkeys", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.string   "cancertype"
    t.string   "favcolor"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "statuses", :force => true do |t|
    t.integer  "request_id"
    t.text     "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                           :null => false
    t.string   "crypted_password",                :null => false
    t.string   "salt",                            :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.boolean  "is_admin"
    t.string   "fname"
    t.string   "lname"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

end
