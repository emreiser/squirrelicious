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

ActiveRecord::Schema.define(version: 20140305213634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baskets", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "baskets", ["user_id"], name: "index_baskets_on_user_id", using: :btree

  create_table "baskets_ingredients", id: false, force: true do |t|
    t.integer "basket_id",     null: false
    t.integer "ingredient_id", null: false
  end

  add_index "baskets_ingredients", ["basket_id", "ingredient_id"], name: "index_baskets_ingredients_on_basket_id_and_ingredient_id", using: :btree
  add_index "baskets_ingredients", ["ingredient_id", "basket_id"], name: "index_baskets_ingredients_on_ingredient_id_and_basket_id", using: :btree

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "ingred_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string  "title"
    t.text    "imageurl"
    t.text    "ingredientlist"
    t.string  "yummlyid"
    t.integer "users_id"
  end

  create_table "recipes_users", id: false, force: true do |t|
    t.integer "recipe_id", null: false
    t.integer "user_id",   null: false
  end

  add_index "recipes_users", ["recipe_id", "user_id"], name: "index_recipes_users_on_recipe_id_and_user_id", using: :btree
  add_index "recipes_users", ["user_id", "recipe_id"], name: "index_recipes_users_on_user_id_and_recipe_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "allergy"
    t.integer  "recipe_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["recipe_id"], name: "index_users_on_recipe_id", using: :btree

end
