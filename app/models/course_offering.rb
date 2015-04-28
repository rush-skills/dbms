class CourseOffering < ActiveRecord::Base
  belongs_to :course
  has_many :course_timings
  has_many :enrollments
  has_and_belongs_to_many :instructors
end
