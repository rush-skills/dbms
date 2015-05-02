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
  has_many :prereq, foreign_key: :prerequisite_id, class_name: 'Prerequisite'
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :credits
  validates_presence_of :syllabus
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
    end
  end
  
  def to_s
    self.title
  end
end
