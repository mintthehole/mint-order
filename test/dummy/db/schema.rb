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

ActiveRecord::Schema.define(:version => 20150612073134) do

  create_table "mint_order_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mint_order_order_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "product_type"
  end

  add_index "mint_order_order_items", ["order_id"], :name => "index_mint_order_order_items_on_order_id"
  add_index "mint_order_order_items", ["product_id"], :name => "index_mint_order_order_items_on_product_id"

  create_table "mint_order_order_notes", :force => true do |t|
    t.integer  "order_id"
    t.integer  "created_by"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mint_order_order_notes", ["order_id"], :name => "index_mint_order_order_notes_on_order_id"

  create_table "mint_order_orders", :force => true do |t|
    t.integer  "merchant_id"
    t.integer  "customer_id"
    t.float    "total"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "mint_order_products", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.string   "prodcut_type"
    t.float    "price"
    t.integer  "quantity"
    t.text     "description"
    t.integer  "owner_id"
    t.text     "image_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "mint_order_products", ["category_id"], :name => "index_mint_order_products_on_category_id"

end
