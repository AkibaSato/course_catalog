class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :university_id
      t.string :abbreviation
      t.string :term

      t.timestamps
    end
  end
end
