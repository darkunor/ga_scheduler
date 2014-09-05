class RemoveStartAndEndTimesAndAddAmPmInCourses < ActiveRecord::Migration
  def up
    change_column :courses, :begin_date, :date
    change_column :courses, :end_date, :date
    remove_column :courses, :begin_time
    remove_column :courses, :end_time
    add_column :courses, :morning, :boolean
    add_column :courses, :afternoon, :boolean
    add_column :courses, :evening, :boolean
  end

  def down
    change_column :courses, :begin_date, :datetime
    change_column :courses, :end_date, :datetime
    add_column :courses, :begin_time, :time
    add_column :courses, :end_time, :time
    remove_column :courses, :morning
    remove_column :courses, :afternoon
    remove_column :courses, :evening
  end
end
