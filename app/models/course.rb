class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments, foreign_key: 'course_id'

  has_many :subject_courses_relation, class_name: "SubjectCoursesRelation",
  primary_key: "code", foreign_key: "course_id"
  has_many :subjects, through: :subject_courses_relation


  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
