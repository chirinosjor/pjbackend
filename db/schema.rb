# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_05_024745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_products", force: :cascade do |t|
    t.bigint "orders_id", null: false
    t.bigint "products_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["orders_id"], name: "index_order_products_on_orders_id"
    t.index ["products_id"], name: "index_order_products_on_products_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_orders_on_store_id"
  end

  create_table "product_stores", force: :cascade do |t|
    t.bigint "products_id", null: false
    t.bigint "stores_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["products_id"], name: "index_product_stores_on_products_id"
    t.index ["stores_id"], name: "index_product_stores_on_stores_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "sku"
    t.string "product_type"
    t.integer "price"
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "email", default: "francisco.abalan@pjchile.com"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.bigint "products_id"
    t.index ["products_id"], name: "index_stores_on_products_id"
  end

  add_foreign_key "order_products", "orders", column: "orders_id"
  add_foreign_key "order_products", "products", column: "products_id"
  add_foreign_key "orders", "stores"
  add_foreign_key "product_stores", "products", column: "products_id"
  add_foreign_key "product_stores", "stores", column: "stores_id"
  add_foreign_key "products", "stores"
  add_foreign_key "stores", "products"
end
