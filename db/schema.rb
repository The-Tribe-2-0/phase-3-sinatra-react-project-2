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

ActiveRecord::Schema.define(version: 2023_06_08_071932) do

  create_table "signups", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "user_id"
    t.index ["user_id"], name: "index_signups_on_user_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string "name"
    t.string "todo"
    t.integer "user_id"
    t.index ["user_id"], name: "index_todos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "todo_id"
    t.index ["todo_id"], name: "index_users_on_todo_id"
  end

  add_foreign_key "signups", "users"
  add_foreign_key "todos", "users"
  add_foreign_key "users", "todos"
end
