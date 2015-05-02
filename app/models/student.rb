# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  program    :string(255)
#  student_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Student < ActiveRecord::Base
  has_many :enrollments
  validates_presence_of :name
  validates_presence_of :program
  validates_presence_of :student_id
  validates_uniqueness_of :student_id
  rails_admin do
    list do
      field :name
      field :program
      field :student_id do
        label "Student ID"
      end
    end
    edit do
      field :name
      field :program
      field :student_id do
        label "Student ID"
      end
    end
  end
  def to_s
    self.name
  end
end
