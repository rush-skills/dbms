# == Schema Information
#
# Table name: instructors
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  title                 :string(255)
#  department_id         :integer
#  identification_number :integer
#  created_at            :datetime
#  updated_at            :datetime
#

class Instructor < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :course_offerings
end
