class CourseOffering < ActiveRecord::Base
  belongs_to :course
  has_many :course_timings
  has_many :enrollments
end
