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

Course.all.each do |c|
  rand(1..2).times do 
    x = CourseOffering.create(course:c, semester: ["Winter","Monsoon"].sample,year: ["2015","2014"].sample,section_number: rand(1..3))
    t = Timing.all
    cl = Classroom.all
    ins = Instructor.all
    rand(1..2).times do 
      CourseTiming.create(course_offering_id: x.id,timing: t.sample,classroom: cl.sample)
    end
    rand(1..2).times do 
      x.instructors << ins.sample
      x.save
    end
  end
end
co = CourseOffering.all
grades = ["A","A+", "B", "B-", "C", "D", "A-" , "F"]
Student.all.each do |s|
  rand(2..4).times do 
    Enrollment.create(student: s,course_offering: co.sample, grade: grades.sample) 
  end
end