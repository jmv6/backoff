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

ActiveRecord::Schema.define(version: 20160226193333) do

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "title"
    t.string   "date_of_birth"
    t.string   "employment_status"
    t.string   "marital_status"
    t.string   "maiden_name"
    t.integer  "number_of_dependents"
    t.text     "dependents_names_ages"
    t.string   "nationality"
    t.integer  "planned_retirement_age"
    t.boolean  "smoker"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "town"
    t.string   "post_code"
    t.string   "country"
    t.string   "preferred_tel"
    t.string   "home_telephone"
    t.string   "mobile_telephone"
    t.text     "best_time"
    t.string   "email"
    t.boolean  "children_under_age"
    t.boolean  "employment_permanent"
    t.string   "occupation"
    t.boolean  "sick_pay_benefit"
    t.integer  "user_id"
    t.string   "controlling_director"
    t.integer  "shareholding"
    t.integer  "year1_profit"
    t.integer  "year2_profit"
    t.integer  "year3_profit"
    t.text     "accountant_details"
    t.integer  "annual_income"
    t.integer  "annual_expenses"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "clients", ["user_id"], name: "index_clients_on_user_id"

  create_table "pension_transfers", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "user_id"
    t.boolean  "loa_signed"
    t.boolean  "loa_sent_to_provider"
    t.boolean  "completed"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pension_transfers", ["client_id"], name: "index_pension_transfers_on_client_id"
  add_index "pension_transfers", ["user_id"], name: "index_pension_transfers_on_user_id"

  create_table "trusts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.string   "provider"
    t.string   "type_of_cover"
    t.string   "total_value"
    t.boolean  "payment_received"
    t.boolean  "loa_sent_to_client"
    t.boolean  "loa_signed_and_received"
    t.boolean  "loa_sent_to_provider"
    t.boolean  "information_received_from_provider"
    t.boolean  "trust_docs_sent_to_client"
    t.boolean  "trust_docs_signed_and_received"
    t.boolean  "sent_to_trustees"
    t.boolean  "signed_by_trustees"
    t.boolean  "completed"
    t.text     "notes"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "trusts", ["client_id"], name: "index_trusts_on_client_id"
  add_index "trusts", ["user_id"], name: "index_trusts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "surname"
    t.integer  "agent_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.boolean  "spouse"
    t.string   "spouse_name"
    t.string   "relationship"
    t.boolean  "spouse_executor"
    t.boolean  "second_executor"
    t.string   "second_executor_name"
    t.string   "second_executor_city"
    t.boolean  "alternate_executor"
    t.string   "alternate_executor_name"
    t.string   "alternate_executor_city"
    t.string   "alternate_executor_country"
    t.text     "children"
    t.boolean  "spouse_guardian"
    t.string   "alternate_guardian"
    t.text     "alternate_guardian_address"
    t.boolean  "gift_conditions"
    t.integer  "gift_conditions_age"
    t.text     "specific_gifts"
    t.text     "estate_residue"
    t.boolean  "wipeout_clause"
    t.text     "wipeout_distribution"
    t.boolean  "pets"
    t.text     "pet_details_carers"
    t.text     "additional_clauses"
    t.text     "notes"
    t.boolean  "draft_created"
    t.boolean  "draft_sent_to_client"
    t.boolean  "client_approval"
    t.boolean  "final_version_sent_to_client"
    t.boolean  "payment_received"
    t.boolean  "completed"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "wills", ["client_id"], name: "index_wills_on_client_id"
  add_index "wills", ["user_id"], name: "index_wills_on_user_id"

end
