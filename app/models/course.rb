class Course < ActiveRecord::Base
  has_many :prerequisites
end
