# == Schema Information
#
# Table name: prerequisites
#
#  id              :integer          not null, primary key
#  prerequisite_id :integer
#  course_id       :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class PrerequisiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
