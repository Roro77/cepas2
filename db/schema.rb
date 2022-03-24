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

ActiveRecord::Schema.define(version: 2022_03_23_154532) do

  create_table "eonologist_wines", force: :cascade do |t|
    t.integer "eonologist_id", null: false
    t.integer "wine_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["eonologist_id"], name: "index_eonologist_wines_on_eonologist_id"
    t.index ["wine_id"], name: "index_eonologist_wines_on_wine_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "oenologist_magazines", force: :cascade do |t|
    t.integer "oenologist_id", null: false
    t.integer "magazine_id", null: false
    t.string "job"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["magazine_id"], name: "index_oenologist_magazines_on_magazine_id"
    t.index ["oenologist_id"], name: "index_oenologist_magazines_on_oenologist_id"
  end

  create_table "oenologists", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.string "nationality", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_strains", force: :cascade do |t|
    t.integer "percentage"
    t.integer "wine_id", null: false
    t.integer "strain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["strain_id"], name: "index_wine_strains_on_strain_id"
    t.index ["wine_id"], name: "index_wine_strains_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "eonologist_wines", "eonologists"
  add_foreign_key "eonologist_wines", "wines"
  add_foreign_key "oenologist_magazines", "magazines"
  add_foreign_key "oenologist_magazines", "oenologists"
  add_foreign_key "wine_strains", "strains"
  add_foreign_key "wine_strains", "wines"
end