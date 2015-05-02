# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Department < ActiveRecord::Base
  has_many :instructors
   rails_admin do
    list do
      field :name
      field :instructors
    end
    edit do
      field :name
    end
  end
end
