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
  
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :day
  validates_uniqueness_of :start, :scope => [:end,:day]
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
  def name
    self.to_s
  end
  def to_s
    if self.start and self.end
    self.day.to_s + " " + self.start.strftime("%H:%M") + "-" + self.end.strftime("%H:%M")
    end
  end
end
