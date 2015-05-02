# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'spreadsheet'
book = Spreadsheet.open 'public/seed.xls'

sheet1 = book.worksheet 0
sheet1.each do |row|
  Classroom.create(name: row[0],building: row[1])
end

sheet1 = book.worksheet 1
sheet1.each do |row|
  Course.create(title: row[1],credits: row[2],syllabus: row[3],number: row[0])
end

temp = {}
sheet1 = book.worksheet 2
sheet1.each do |row|
  Department.create(name: row[1])
  temp[row[0]] = row[1]
end

sheet1 = book.worksheet 3
sheet1.each do |row|
  Instructor.create(identification_number: row[0],department: Department.find_by_name(temp[row[3]]),title: row[2],name: row[1])
end

sheet1 = book.worksheet 4
sheet1.each do |row|
  Prerequisite.create(course_id: Course.find_by_number(row[0]).id, prerequisite_id: Course.find_by_number(row[1]).id)
end

sheet1 = book.worksheet 5
sheet1.each do |row|
  Student.create(name: row[1],program: row[2],student_id: row[0])
end

sheet1 = book.worksheet 6
sheet1.each do |row|
  Timing.create(start: row[1],end: row[2],day: row[3])
end
