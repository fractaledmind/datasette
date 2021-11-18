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

ActiveRecord::Schema.define(version: 2019_02_09_143359) do

  create_table "comic_characters", force: :cascade do |t|
    t.string "publisher"
    t.string "real_name"
    t.string "alias"
    t.string "url"
    t.integer "appearances"
    t.boolean "alive"
    t.string "gender"
    t.string "identity_type"
    t.string "alignment"
    t.date "intro_in", precision: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
