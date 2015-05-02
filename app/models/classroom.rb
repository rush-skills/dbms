# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  building   :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Classroom < ActiveRecord::Base
  has_many :course_timings
  validates_uniqueness_of :name, :scope => :building
  validates_presence_of :building
  validates_presence_of :name
  rails_admin do
    list do
      field :name
      field :building
      field :course_timings
    end
    edit do
      field :name
      field :building
    end
  end
  def to_s
    self.name
  end
end
