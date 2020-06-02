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

ActiveRecord::Schema.define(version: 2020_06_01_090418) do

  create_table "admin_tools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "round1", default: false
    t.boolean "round2", default: false
    t.boolean "round3", default: false
    t.boolean "round4", default: false
    t.boolean "round5", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "answ10"
    t.boolean "answ11"
    t.boolean "answ12"
    t.boolean "answ13"
    t.boolean "answ14"
    t.boolean "answ15"
    t.boolean "answ16"
    t.boolean "answ17"
    t.boolean "answ18"
    t.boolean "answ19"
    t.string "answ20"
    t.string "answ21"
    t.string "answ22"
    t.string "answ23"
    t.string "answ24"
    t.string "answ25"
    t.string "answ26"
    t.string "answ27"
    t.string "answ28"
    t.string "answ29"
    t.string "answ30"
    t.string "answ31"
    t.string "answ32"
    t.string "answ33"
    t.string "answ34"
    t.string "answ35"
    t.string "answ36"
    t.string "answ37"
    t.string "answ38"
    t.string "answ39"
    t.string "answ40"
    t.string "answ41"
    t.string "answ42"
    t.string "answ43"
    t.string "answ44"
    t.string "answ45"
    t.string "answ46"
    t.string "answ47"
    t.string "answ48"
    t.string "answ49"
    t.string "answ50"
    t.string "answ51"
    t.string "answ52"
    t.string "answ53"
    t.string "answ54"
    t.string "answ55"
    t.string "answ56"
    t.string "answ57"
    t.string "answ58"
    t.string "answ59"
    t.integer "score1"
    t.integer "score2"
    t.integer "score3"
    t.integer "score4"
    t.integer "score5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ip_adress"
  end

end
