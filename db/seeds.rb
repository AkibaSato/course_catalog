# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read('instructor.json')
data_hash = JSON.parse(file)

data_hash.each do |instructor|
  Instructor.create(first: instructor['first'],
                    middle: instructor['middle'],
                    last: instructor['last'],
                    university_id: instructor['id'],
                    email: instructor['email'])
end

# Course parsing
file = File.read('course.json')
data_hash = JSON.parse(file)

i = 1
data_hash.each do |course|
  Course.create(university_id: i,
                name: course['name'],
                code: course['id'],
                credit: course['credits'],
                description: course['description'])
                i = i + 1
  subjects = course['subjects']
end

# Subject parsing
file = File.read('subject.json')
data_hash = JSON.parse(file)

data_hash.each do |subject|
  Subject.create(name: subject['name'],
                term: subject['term'],
                abbreviation: subject['abbreviation'],
                university_id: subject['id'])
end
