class Instructor < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :course_offerings
end
