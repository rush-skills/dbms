# == Schema Information
#
# Table name: course_offerings
#
#  id             :integer          not null, primary key
#  course_id      :integer
#  section_number :integer
#  year           :string(255)
#  semester       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class CourseOffering < ActiveRecord::Base
  belongs_to :course
  has_many :course_timings
  has_many :enrollments
  has_and_belongs_to_many :instructors
end
