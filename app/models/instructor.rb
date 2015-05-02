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
   rails_admin do
    list do
      field :name
      field :title
      field :identification_number
      field :department
      field :course_offerings
    end
    edit do
      field :name
      field :title
      field :identification_number
      field :department
    end
  end
end
