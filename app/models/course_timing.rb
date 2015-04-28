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
end
