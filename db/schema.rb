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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_17_151844) do
=======
ActiveRecord::Schema.define(version: 2019_04_18_190806) do
>>>>>>> 46fc176add7ab7dd1877dbca04bed2bfab8b9535
=======
ActiveRecord::Schema.define(version: 2019_04_23_170355) do
>>>>>>> 420469162c4f356447816eaf3d20f35f325a6608

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.string "email"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "lname"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
