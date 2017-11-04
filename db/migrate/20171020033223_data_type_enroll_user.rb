class DataTypeEnrollUser < ActiveRecord::Migration[5.1]
  def change
    change_column :enrollments, :user_id, 'integer USING CAST(user_id AS integer)'

    # rename_column :enrollments, :user_id, :string
    # add_column :enrollments, :user_id, :int
    # # ALTER TABLE "enrollments" ALTER COLUMN "user_id" TYPE int
    #
    # Enrollment.reset_column_information
    # Enrollment.find(:all).each { |enrollment| enrollment.update_attribute(:user_id, enrollment.string) }
    # remove_column :enrollments, :string
  end
end
