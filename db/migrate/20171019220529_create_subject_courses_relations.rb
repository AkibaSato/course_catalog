class CreateSubjectCoursesRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_courses_relations do |t|
      t.string :subject_id
      t.string :course_id

      t.timestamps
    end

    # add_index :subject_courses, :course_id
    # add_index :subject_courses, :subject_id
  end
end
