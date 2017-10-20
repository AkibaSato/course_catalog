json.extract! course, :id, :name, :university_id, :code, :credit, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
