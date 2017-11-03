class Subject < ApplicationRecord
  has_many :subject_courses_relation, class_name: "SubjectCoursesRelation"
  has_many :courses, through: :subject_courses_relation
end
