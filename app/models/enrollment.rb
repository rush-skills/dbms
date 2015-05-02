# == Schema Information
#
# Table name: enrollments
#
#  id                 :integer          not null, primary key
#  grade              :string(255)
#  student_id         :integer
#  course_offering_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :course_offering
   rails_admin do
    list do
      field :course_offering
      field :student
      field :grade
    end
    edit do
      field :course_offering
      field :student
      field :grade
    end
  end
end
