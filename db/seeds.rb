# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Instructor.delete_all
file = File.read('instructor.json')
data_hash = JSON.parse(file)

data_hash.each do |each_instructor|
  instructor = Instructor.new
  instructor.first = each_instructor['first']
  instructor.middle = each_instructor['middle']
  instructor.last = each_instructor['last']
  instructor.university_id = each_instructor['id']
  instructor.email = each_instructor['email']
  instructor.save


  # Instructor.create(first: instructor['first'],
  #                   middle: instructor['middle'],
  #                   last: instructor['last'],
  #                   university_id: instructor['id'],
  #                   email: instructor['email'])
end

Subject.delete_all
file = File.read('subject.json')
data_hash = JSON.parse(file)

data_hash.each do |each_subject|
  subject = Subject.new
  subject.name = each_subject['name']
  subject.term = each_subject['term']
  subject.abbreviation = each_subject['abbreviation']
  subject.university_id = each_subject['id']
  subject.save

  # Subject.create(name: subject['name'],
  #               term: subject['term'],
  #               abbreviation: subject['abbreviation'],
  #               university_id: subject['id'])
end

Course.delete_all
file = File.read('course.json')
data_hash = JSON.parse(file)

# subjects = Subject.all

i = 1
data_hash.each do |each_course|
  course = Course.new
  course.university_id = i

  course.name = each_course['name']
  course.code = each_course['id']
  course.credit = each_course['credits'].to_i
  course.description = each_course['description']
  course.save
  i = i + 1

  # relation = SubjectCoursesRelation.new
  # relation.course_id = course.code
  # subject = subjects.find_by_ { course.code }

  # Course.create(university_id: i,
  #               name: course['name'],
  #               code: course['id'],
  #               credit: course['credits'],
  #               description: course['description'])
  #               i = i + 1
  # subjects = course['subjects']

end

SubjectCoursesRelation.delete_all
file = File.read('course.json')
data_hash = JSON.parse(file)

data_hash.each do |each_course|
  course1 = Course.where(:code => each_course['code']).first
  each_course['subjects'].each do |each_subject|
    relation = SubjectCoursesRelation.new
    relation.course_id = each_course['code']
    relation.subject_id = each_subject['university_id']
    relation.save
  end
end
