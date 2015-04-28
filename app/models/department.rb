class Department < ActiveRecord::Base
  has_many :instructors
end
