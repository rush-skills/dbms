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

ActiveRecord::Schema.define(version: 20150502203451) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "classrooms", force: true do |t|
    t.string   "building"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_offerings", force: true do |t|
    t.integer  "course_id"
    t.integer  "section_number"
    t.string   "year"
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_offerings", ["course_id"], name: "index_course_offerings_on_course_id"

  create_table "course_offerings_instructors", force: true do |t|
    t.integer "course_offering_id"
    t.integer "instructor_id"
  end

  add_index "course_offerings_instructors", ["course_offering_id"], name: "index_course_offerings_instructors_on_course_offering_id"
  add_index "course_offerings_instructors", ["instructor_id"], name: "index_course_offerings_instructors_on_instructor_id"

  create_table "course_timings", force: true do |t|
    t.integer  "timing_id"
    t.integer  "course_offering_id"
    t.integer  "classroom_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_timings", ["classroom_id"], name: "index_course_timings_on_classroom_id"
  add_index "course_timings", ["course_offering_id"], name: "index_course_timings_on_course_offering_id"
  add_index "course_timings", ["timing_id"], name: "index_course_timings_on_timing_id"

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "credits"
    t.text     "syllabus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.string   "grade"
    t.integer  "student_id"
    t.integer  "course_offering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["course_offering_id"], name: "index_enrollments_on_course_offering_id"
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id"

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "department_id"
    t.integer  "identification_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructors", ["department_id"], name: "index_instructors_on_department_id"

  create_table "prerequisites", force: true do |t|
    t.integer  "prerequisite_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prerequisites", ["course_id"], name: "index_prerequisites_on_course_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "program"
    t.string   "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timings", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
