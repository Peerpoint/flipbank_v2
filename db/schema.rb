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

ActiveRecord::Schema.define(version: 20160909164347) do

  create_table "loans", force: :cascade do |t|
    t.string   "trans_type"
    t.decimal  "gross_loan",              default: 0.0
    t.string   "loan_term"
    t.date     "closing_date"
    t.boolean  "rehab"
    t.decimal  "rehab_funds",             default: 0.0
    t.string   "coll_address"
    t.string   "prop_type"
    t.boolean  "occupy"
    t.date     "contract_exp"
    t.decimal  "seller_con",              default: 0.0
    t.decimal  "salesprice",              default: 0.0
    t.decimal  "as_is_val",               default: 0.0
    t.decimal  "arv",                     default: 0.0
    t.decimal  "ltc",                     default: 0.0
    t.decimal  "ltv_as",                  default: 0.0
    t.decimal  "ltv_eff",                 default: 0.0
    t.date     "purch_date"
    t.decimal  "verif_improv",            default: 0.0
    t.decimal  "payoff",                  default: 0.0
    t.string   "lender_name"
    t.decimal  "purch_price",             default: 0.0
    t.decimal  "appraised_val",           default: 0.0
    t.boolean  "borrower"
    t.string   "fname"
    t.string   "lname"
    t.string   "hemail"
    t.string   "hphone"
    t.string   "home_add"
    t.string   "citizen"
    t.integer  "credit_score"
    t.date     "bk"
    t.integer  "sixty_days"
    t.boolean  "foreclosure"
    t.date     "last_fc_ss"
    t.string   "entity"
    t.string   "bizname"
    t.string   "bizadd"
    t.string   "bizemail"
    t.string   "bizphone"
    t.integer  "purchsixmo"
    t.integer  "purchtwelvemo"
    t.integer  "purchlife"
    t.decimal  "avg_price",               default: 0.0
    t.date     "dob"
    t.string   "ssn"
    t.string   "ein"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.decimal  "total_amount_requested",  default: 0.0
    t.boolean  "sales_contract"
    t.decimal  "loan_to_cost_eq",         default: 0.0
    t.decimal  "loan_to_value_as_is",     default: 0.0
    t.decimal  "loan_to_value_effective", default: 0.0
  end

end
