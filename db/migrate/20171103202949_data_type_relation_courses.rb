class DataTypeRelationCourses < ActiveRecord::Migration[5.1]
  def change
    change_column :subject_courses_relations, :subject_id, :int
    change_column :subject_courses_relations, :course_id, :int
  end
end
