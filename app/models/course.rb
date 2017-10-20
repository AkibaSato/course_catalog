class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments, foreign_key: 'course_id'

  has_many :relation_subject_courses, class_name: "RelationSubjectCourse",primary_key: "code",foreign_key: "course_id"
  has_many :subjects, through: :relation_subject_courses
  
end
