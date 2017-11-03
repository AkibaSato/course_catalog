class Subject < ApplicationRecord
  has_many :subject_courses_relation, class_name: "SubjectCoursesRelation",
  primary_key: "university_id", foreign_key: "subject_id"
  has_many :courses, through: :subject_courses_relation
end
