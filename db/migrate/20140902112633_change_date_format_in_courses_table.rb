class ChangeDateFormatInCoursesTable < ActiveRecord::Migration
  def up
  change_column :courses, :begin_date, :datetime
  change_column :courses, :end_date, :datetime
  change_column :courses, :begin_time, :time
  change_column :courses, :end_time, :time
  end

  def down
  change_column :courses, :begin_date, :integer
  change_column :courses, :end_date, :integer
  change_column :courses, :begin_time, :integer
  change_column :courses, :end_time, :integer
  end
end
