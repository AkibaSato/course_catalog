class SubjectCoursesRelation < ApplicationRecord
  belongs_to :subject, :class_name => 'Subject', primary_key: 'university_id', foreign_key: 'subject_id'
  belongs_to :course, :class_name => 'Course', primary_key: 'code', foreign_key: 'course_id'
end
