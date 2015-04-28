class CreateCourseOfferingsInstructors < ActiveRecord::Migration
  def change
    create_table :course_offerings_instructors do |t|
      t.belongs_to :course_offering, index: true
      t.belongs_to :instructor, index: true
    end
  end
end
