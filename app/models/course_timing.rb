class CourseTiming < ActiveRecord::Base
  belongs_to :timing
  belongs_to :course_offering
  belongs_to :classroom
end
