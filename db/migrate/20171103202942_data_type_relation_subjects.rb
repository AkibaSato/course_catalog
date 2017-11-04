class DataTypeRelationSubjects < ActiveRecord::Migration[5.1]
  def change
    change_column :subject_courses_relations, :subject_id, 'integer USING CAST(subject_id AS integer)'
  end
end
