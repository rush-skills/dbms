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

class Prerequisite < ActiveRecord::Base
  belongs_to :course
  rails_admin do
    list do
      field :course_id
      field :prerequisite_id
    end
    edit do
      field :course_id
      field :prerequisite_id
    end
  end
end
