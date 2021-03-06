# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_25_232900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lenders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provinces", default: [], array: true
    t.string "cities", default: [], array: true
    t.string "counties", default: [], array: true
    t.integer "radius"
    t.float "max_loan_amt"
    t.float "min_loan_amt"
    t.float "ltv"
    t.float "ltc"
    t.string "index_type"
    t.integer "bps"
    t.float "base_rate"
    t.float "above_base"
    t.string "full_name"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.integer "amortization"
    t.float "loan_term"
    t.boolean "recourse"
    t.string "property_types", default: [], array: true
    t.string "loan_products", default: [], array: true
    t.string "prepayment_penalty", default: [], array: true
    t.string "borrower_eligibility", default: [], array: true
    t.integer "borrower_credit_score"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "lender_id"
  end

  add_foreign_key "states", "lenders"
end
