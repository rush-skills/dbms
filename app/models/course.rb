# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  credits    :string(255)
#  syllabus   :text
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  has_many :prerequisites
  has_many :course_offerings
end
