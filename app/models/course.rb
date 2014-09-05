class Course < ActiveRecord::Base
  attr_accessible :begin_date, :classroom_id, :description, :end_date, :name, :quantity_of_students, :tuition, :morning, :afternoon, :evening

  belongs_to :classroom
  has_many :enrollments
  has_many :students, class_name: "User", through: :enrollments
  #has_many :instructors, model: "User", through: :courses_instructors

def duration
    @end_date - @begin_date
  end

end
