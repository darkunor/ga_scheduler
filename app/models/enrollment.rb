class Enrollment < ActiveRecord::Base
  attr_accessible :course_id, :student_id

  belongs_to :course
  belongs_to :user




end
