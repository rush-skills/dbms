# == Schema Information
#
# Table name: course_offerings
#
#  id             :integer          not null, primary key
#  course_id      :integer
#  section_number :integer
#  year           :string(255)
#  semester       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class CourseOfferingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
