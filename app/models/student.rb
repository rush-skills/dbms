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
  rails_admin do
    list do
      field :name
      field :program
      field :student_id
    end
    edit do
      field :name
      field :program
      field :student_id
    end
  end
end
