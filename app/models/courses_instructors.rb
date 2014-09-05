class CoursesInstructors < ActiveRecord::Base
  attr_accessible :course_id, :instructor_id

  belongs_to :instructor, class_name: "User"
  belongs_to :course

end
