# == Schema Information
#
# Table name: course_timings
#
#  id                 :integer          not null, primary key
#  timing_id          :integer
#  course_offering_id :integer
#  classroom_id       :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class CourseTiming < ActiveRecord::Base
  belongs_to :timing
  belongs_to :course_offering
  belongs_to :classroom
  validates_uniqueness_of :course_offering, :scope => [:classroom,:timing]
  
  validates_presence_of :course_offering
  validates_presence_of :classroom
  validates_presence_of :timing
  
  rails_admin do
    list do
      field :course_offering
      field :timing
      field :classroom
    end
    edit do
      field :course_offering
      field :timing
      field :classroom
    end
  end
  
  def name
    self.to_s
  end
  
  def to_s
    self.course_offering.to_s + " " + self.timing.to_s + "@" + self.classroom.to_s
  end
end
