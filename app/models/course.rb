class Course < ActiveRecord::Base
  has_many :prerequisites
  has_many :course_offerings
end
