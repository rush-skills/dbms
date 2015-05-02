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
  rails_admin do
    list do
      field :title
      field :credits
      field :syllabus
      field :prerequisites
      field :course_offerings
    end
    edit do
      field :title
      field :credits
      field :syllabus
      field :prerequisites
    end
  end
end
