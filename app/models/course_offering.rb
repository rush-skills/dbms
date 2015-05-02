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
  
  validates_uniqueness_of :course_id, :scope => [:section_number,:year,:semester]
#   validates_uniqueness_of :section_number, :scope => [:course_id,:year,:semester]
#   validates_uniqueness_of :year, :scope => [:section_number,:course_id,:semester]
#   validates_uniqueness_of :semester, :scope => [:section_number,:year,:course_id]
  
  
  rails_admin do
    list do
      field :course
      field :section_number
      field :semester
      field :year
      field :course_timings
      field :instructors
      field :enrollments
    end
    edit do
      field :course
      field :section_number
      field :semester
      field :year
      field :instructors
    end
  end
  
  def name
    self.to_s
  end
  
  def to_s
    self.course.to_s + " - " + self.section_number.to_s + " - " + self.semester.to_s + ", " + self.year.to_s
  end
end
