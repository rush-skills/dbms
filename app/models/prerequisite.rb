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
  
  belongs_to :prereq, class_name: 'Course', :foreign_key => 'prerequisite_id'
  
  validates_uniqueness_of :prereq, :scope => [:course]
  validates_presence_of :course
  validates_presence_of :prereq
  
  rails_admin do
    list do
      field :course
      field :prereq
    end
    edit do
      field :course
      field :prereq
    end
  end
  
  def name
    self.to_s
  end
  def to_s
    self.prereq.to_s
  end
end
