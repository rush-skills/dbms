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

require 'test_helper'

class CourseTimingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
