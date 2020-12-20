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

ActiveRecord::Schema.define(version: 2020_10_06_130924) do

  create_table "ballonfahrers", force: :cascade do |t|
    t.string "name", limit: 64, null: false
    t.integer "tel"
    t.date "geburtstag"
    t.text "uebermich"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password"
    t.string "password_digest"
  end

  create_table "termins", force: :cascade do |t|
    t.string "title", limit: 32, null: false
    t.text "beschreibung"
    t.date "datum"
    t.integer "uhrzeit"
    t.string "koch"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
