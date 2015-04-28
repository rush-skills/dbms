# == Schema Information
#
# Table name: enrollments
#
#  id                 :integer          not null, primary key
#  grade              :string(255)
#  student_id         :integer
#  course_offering_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
