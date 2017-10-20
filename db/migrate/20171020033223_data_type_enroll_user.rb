class DataTypeEnrollUser < ActiveRecord::Migration[5.1]
  def change
    change_column :enrollments, :user_id, :int
  end
end
