class DataTypeEnrollCourse < ActiveRecord::Migration[5.1]
  def change
    change_column :enrollments, :course_id, :int
  end
end
