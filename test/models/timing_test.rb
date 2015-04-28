# == Schema Information
#
# Table name: timings
#
#  id         :integer          not null, primary key
#  start      :time
#  end        :time
#  day        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TimingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
