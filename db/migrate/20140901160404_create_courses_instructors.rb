class CreateCoursesInstructors < ActiveRecord::Migration
  def change
    create_table :courses_instructors do |t|
      t.integer :course_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
