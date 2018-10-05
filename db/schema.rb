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

ActiveRecord::Schema.define(version: 2018_10_05_182126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "IDSP"
    t.text "TENSP"
    t.date "NGAYPHATHANH"
    t.text "ANH"
    t.text "ANHHOVER"
    t.text "ANHCHITIET"
    t.text "GENDER"
    t.text "AGE"
    t.integer "GIABAN"
    t.integer "GIAGOC"
    t.text "SALE"
    t.text "COLOR"
    t.text "COLORDT"
    t.text "FRANCHISE"
    t.text "PRODUCTTYPE"
    t.text "BRAND"
    t.text "CATEGORY"
    t.text "SPORTS"
    t.text "MIADIDAS"
    t.text "TEAMNAME"
    t.text "PARNER"
    t.text "DESCRIPTION_H5"
    t.text "DESCRIPTION_P"
    t.text "SPECIFICATIONS"
    t.text "CARE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "products"
end
