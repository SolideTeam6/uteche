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

ActiveRecord::Schema.define(version: 20160804030721) do

  create_table "alumnos", force: :cascade do |t|
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
    t.integer  "student_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "alumnos", ["email"], name: "index_alumnos_on_email", unique: true
  add_index "alumnos", ["reset_password_token"], name: "index_alumnos_on_reset_password_token", unique: true
  add_index "alumnos", ["student_id"], name: "index_alumnos_on_student_id"

  create_table "depositos", force: :cascade do |t|
    t.integer  "student_id"
    t.float    "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "depositos", ["student_id"], name: "index_depositos_on_student_id"

  create_table "monederos", force: :cascade do |t|
    t.integer  "student_id"
    t.float    "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "monederos", ["student_id"], name: "index_monederos_on_student_id"

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "marca"
    t.float    "precio"
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id"

  create_table "students", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "update_stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "update_stocks", ["product_id"], name: "index_update_stocks_on_product_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venta", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "product_id"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "venta", ["product_id"], name: "index_venta_on_product_id"
  add_index "venta", ["student_id"], name: "index_venta_on_student_id"

end
