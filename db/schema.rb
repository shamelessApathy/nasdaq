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

ActiveRecord::Schema.define(version: 20170222071043) do

  create_table "portfolio_stocks", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "stock_id"
    t.integer  "portfolio_id"
    t.decimal  "price",        precision: 10
    t.integer  "quantity"
    t.boolean  "buy"
    t.boolean  "sell"
    t.string   "user_comment"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "portfolios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_portfolios_on_user_id", using: :btree
  end

  create_table "portfolios_stocks", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "portfolio_id"
    t.integer "stock_id"
    t.integer "portfolios_id"
    t.integer "stocks_id"
    t.index ["portfolios_id"], name: "index_portfolios_stocks_on_portfolios_id", using: :btree
    t.index ["stocks_id"], name: "index_portfolios_stocks_on_stocks_id", using: :btree
  end

  create_table "sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ticker"
    t.decimal  "price",        precision: 10
    t.integer  "quantity"
    t.integer  "sector_id"
    t.boolean  "buy"
    t.boolean  "sell"
    t.string   "company_name"
    t.string   "user_comment"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["sector_id"], name: "index_stocks_on_sector_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
