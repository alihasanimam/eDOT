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

ActiveRecord::Schema.define(version: 20151129145328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "communities", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "employee_id"
    t.integer  "health_center_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "communities", ["employee_id"], name: "index_communities_on_employee_id", using: :btree
  add_index "communities", ["health_center_id"], name: "index_communities_on_health_center_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "type"
    t.string   "gender"
    t.date     "birthday"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone"
    t.integer  "health_center_id"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree

  create_table "health_centers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "type"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "owner_type"
    t.integer  "owner_id"
    t.integer  "medicine_id"
    t.integer  "quantity",    default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lab_reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "month"
    t.string   "data1"
    t.string   "data2"
    t.integer  "testedby_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lab_reports", ["patient_id"], name: "index_lab_reports_on_patient_id", using: :btree
  add_index "lab_reports", ["testedby_id"], name: "index_lab_reports_on_testedby_id", using: :btree

  create_table "medications", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "month"
    t.string   "year"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.jsonb    "days",       default: {}, null: false
  end

  add_index "medications", ["days"], name: "index_medications_on_days", using: :gin

  create_table "medicines", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medicines_patients", id: false, force: :cascade do |t|
    t.integer "medicine_id"
    t.integer "patient_id"
  end

  add_index "medicines_patients", ["medicine_id"], name: "index_medicines_patients_on_medicine_id", using: :btree
  add_index "medicines_patients", ["patient_id"], name: "index_medicines_patients_on_patient_id", using: :btree

  create_table "patient_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "national_id"
    t.string   "gender"
    t.date     "birthday"
    t.string   "status"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "patient_type_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "cared_by_id"
  end

  add_index "patients", ["national_id"], name: "index_patients_on_national_id", unique: true, using: :btree

end
