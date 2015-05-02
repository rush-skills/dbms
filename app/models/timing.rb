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

class Timing < ActiveRecord::Base
  has_many :course_timings
  rails_admin do 
    list do
      field :day
      field :start
      field :end
    end
    edit do
      field :day
      field :start
      field :end
    end
  end
end
