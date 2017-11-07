class CreateSubjectCoursesRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_courses_relations do |t|
      t.integer :subject_id
      t.integer :course_id

      t.timestamps
    end
  end
end
