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
  
  validates_uniqueness_of :identification_number
  validates_presence_of :name
  validates_presence_of :title
  validates_presence_of :identification_number
  
  
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
  def to_s
    self.name
  end
end
