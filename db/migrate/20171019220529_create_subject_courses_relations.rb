class CreateSubjectCoursesRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_courses_relations do |t|
      t.string :subject_id
      t.string :course_id

      t.timestamps
    end
  end
end
