class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :university_id
      t.string :code
      t.integer :credit
      t.string :description

      t.timestamps
    end
  end
end
