class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :begin_date
      t.integer :end_date
      t.integer :begin_time
      t.integer :end_time
      t.integer :quantity_of_students
      t.integer :classroom_id
      t.integer :tuition

      t.timestamps
    end
  end
end
