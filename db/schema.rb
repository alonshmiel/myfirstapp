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
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121223230508) do

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.boolean  "done"
    t.integer  "worker_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tasks", ["worker_id"], :name => "index_tasks_on_worker_id"

  create_table "workers", :force => true do |t|
    t.string   "name"
    t.text     "task"
    t.boolean  "done"
=======
ActiveRecord::Schema.define(:version => 20121219111104) do

  create_table "tasks", :force => true do |t|
    t.string   "name"
>>>>>>> a72203f6334ec91d16b19f5388c76b63195e8698
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
