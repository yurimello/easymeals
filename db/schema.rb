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

ActiveRecord::Schema.define(version: 20150613193512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_instructions", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "receipe_id"
    t.string   "quantity"
    t.string   "how"
    t.string   "metering"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
    t.string   "scope"
    t.string   "param_name"
    t.float    "numeric_quantity"
    t.integer  "weight"
  end

  add_index "ingredient_instructions", ["ingredient_id"], name: "index_ingredient_instructions_on_ingredient_id", using: :btree
  add_index "ingredient_instructions", ["receipe_id"], name: "index_ingredient_instructions_on_receipe_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipes", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "time_to_do"
    t.text     "obs"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "category_id"
    t.string   "url"
    t.string   "author"
    t.string   "category_name"
    t.string   "cover"
    t.integer  "yield"
    t.string   "menu_group"
    t.integer  "steps_count"
    t.integer  "ingredients_count"
  end

  add_index "receipes", ["category_id"], name: "index_receipes_on_category_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.integer  "position"
    t.integer  "receipe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.string   "scope"
  end

  add_index "steps", ["receipe_id"], name: "index_steps_on_receipe_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  add_foreign_key "ingredient_instructions", "ingredients"
  add_foreign_key "ingredient_instructions", "receipes"
  add_foreign_key "receipes", "categories"
  add_foreign_key "steps", "receipes"
end
