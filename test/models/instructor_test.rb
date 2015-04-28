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

require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
