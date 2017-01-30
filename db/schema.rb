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

ActiveRecord::Schema.define(version: 20170130075548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brews", force: :cascade do |t|
    t.integer  "roast_id"
    t.string   "brew_method"
    t.datetime "time_of_brew"
    t.integer  "qty_of_beans"
    t.integer  "bitterness"
    t.integer  "complexity"
    t.integer  "acidity"
    t.integer  "overall"
    t.string   "texture"
    t.text     "comments"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roasts", force: :cascade do |t|
    t.string   "roast_method"
    t.datetime "date_of_roast"
    t.string   "bean_species"
    t.integer  "roast_time"
    t.datetime "time_of_roast"
    t.string   "roast_profile"
    t.integer  "avg_temp_roast"
    t.integer  "raw_weight"
    t.string   "storage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
